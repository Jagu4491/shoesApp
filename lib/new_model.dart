class NewModel {
  bool? success;
  String? message;
  String? code;
  Data? data;

  NewModel({this.success, this.message, this.code, this.data});

  NewModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    code = json['code'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    data['code'] = this.code;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? totalHits;
  String? query;
  SeoMetaData? seoMetaData;
  Null? plpTimer;
  String? plpBanner;
  List<PlpCard>? plpCard;
  List<Filters>? filters;
  SortBy? sortBy;
  String? mobileBanner;
  String? webBanner;
  String? mobileBannerV2;

  Data(
      {this.totalHits,
        this.query,
        this.seoMetaData,
        this.plpTimer,
        this.plpBanner,
        this.plpCard,
        this.filters,
        this.sortBy,
        this.mobileBanner,
        this.webBanner,
        this.mobileBannerV2});

  Data.fromJson(Map<String, dynamic> json) {
    totalHits = json['total_hits'];
    query = json['query'];
    seoMetaData = json['seo_meta_data'] != null
        ? new SeoMetaData.fromJson(json['seo_meta_data'])
        : null;
    plpTimer = json['plp_timer'];
    plpBanner = json['plp_banner'];
    if (json['plp_card'] != null) {
      plpCard = <PlpCard>[];
      json['plp_card'].forEach((v) {
        plpCard!.add(new PlpCard.fromJson(v));
      });
    }
    if (json['filters'] != null) {
      filters = <Filters>[];
      json['filters'].forEach((v) {
        filters!.add(new Filters.fromJson(v));
      });
    }
    sortBy =
    json['sort_by'] != null ? new SortBy.fromJson(json['sort_by']) : null;
    mobileBanner = json['mobile_banner'];
    webBanner = json['web_banner'];
    mobileBannerV2 = json['mobile_banner_v2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_hits'] = this.totalHits;
    data['query'] = this.query;
    if (this.seoMetaData != null) {
      data['seo_meta_data'] = this.seoMetaData!.toJson();
    }
    data['plp_timer'] = this.plpTimer;
    data['plp_banner'] = this.plpBanner;
    if (this.plpCard != null) {
      data['plp_card'] = this.plpCard!.map((v) => v.toJson()).toList();
    }
    if (this.filters != null) {
      data['filters'] = this.filters!.map((v) => v.toJson()).toList();
    }
    if (this.sortBy != null) {
      data['sort_by'] = this.sortBy!.toJson();
    }
    data['mobile_banner'] = this.mobileBanner;
    data['web_banner'] = this.webBanner;
    data['mobile_banner_v2'] = this.mobileBannerV2;
    return data;
  }
}

class SeoMetaData {
  String? h1;
  bool? noFollow;
  bool? noIndex;
  String? canonicalUrl;
  String? keyword;
  String? metaDescription;
  String? metaTitle;
  String? h1Tag;
  String? plpFooter;

  SeoMetaData(
      {this.h1,
        this.noFollow,
        this.noIndex,
        this.canonicalUrl,
        this.keyword,
        this.metaDescription,
        this.metaTitle,
        this.h1Tag,
        this.plpFooter});

  SeoMetaData.fromJson(Map<String, dynamic> json) {
    h1 = json['h1'];
    noFollow = json['no_follow'];
    noIndex = json['no_index'];
    canonicalUrl = json['canonical_url'];
    keyword = json['keyword'];
    metaDescription = json['meta_description'];
    metaTitle = json['meta_title'];
    h1Tag = json['h1_tag'];
    plpFooter = json['plp_footer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['h1'] = this.h1;
    data['no_follow'] = this.noFollow;
    data['no_index'] = this.noIndex;
    data['canonical_url'] = this.canonicalUrl;
    data['keyword'] = this.keyword;
    data['meta_description'] = this.metaDescription;
    data['meta_title'] = this.metaTitle;
    data['h1_tag'] = this.h1Tag;
    data['plp_footer'] = this.plpFooter;
    return data;
  }
}

class PlpCard {
  String? price;
  int? productId;
  String? name;
  int? maxRetailPrice;
  int? maxRegularPrice;
  String? currencyCode;
  String? discount;
  List<String>? imageUrls;
  List<String>? sizeChartImageUrls;
  String? action;
  String? type;
  String? deliveryMessage;
  String? vendorName;
  List<SkuInfo>? skuInfo;
  String? isWishlisted;
  bool? canWishlist;
  bool? isExclusive;
  List<String>? messageOnImage;
  String? stockStatus;
  String? stockMsg;
  bool? isOnSale;
  String? brandName;
  String? urlKey;

  PlpCard(
      {this.price,
        this.productId,
        this.name,
        this.maxRetailPrice,
        this.maxRegularPrice,
        this.currencyCode,
        this.discount,
        this.imageUrls,
        this.sizeChartImageUrls,
        this.action,
        this.type,
        this.deliveryMessage,
        this.vendorName,
        this.skuInfo,
        this.isWishlisted,
        this.canWishlist,
        this.isExclusive,
        this.messageOnImage,
        this.stockStatus,
        this.stockMsg,
        this.isOnSale,
        this.brandName,
        this.urlKey});

  PlpCard.fromJson(Map<String, dynamic> json) {
    price = json['price'];
    productId = json['product_id'];
    name = json['name'];
    maxRetailPrice = json['max_retail_price'];
    maxRegularPrice = json['max_regular_price'];
    currencyCode = json['currency_code'];
    discount = json['discount'];
    imageUrls = json['image_urls'].cast<String>();
    sizeChartImageUrls = json['size_chart_image_urls'].cast<String>();
    action = json['action'];
    type = json['type'];
    deliveryMessage = json['delivery_message'];
    vendorName = json['vendor_name'];
    if (json['sku_info'] != null) {
      skuInfo = <SkuInfo>[];
      json['sku_info'].forEach((v) {
        skuInfo!.add(new SkuInfo.fromJson(v));
      });
    }
    isWishlisted = json['is_wishlisted'];
    canWishlist = json['can_wishlist'];
    isExclusive = json['is_exclusive'];
    if (json['message_on_image'] != null) {
      messageOnImage = <String>[];
      json['message_on_image'].forEach((v) {
        messageOnImage!.add(v);
      });
    }
    stockStatus = json['stock_status'];
    stockMsg = json['stock_msg'];
    isOnSale = json['is_on_sale'];
    brandName = json['brand_name'];
    urlKey = json['url_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['price'] = this.price;
    data['product_id'] = this.productId;
    data['name'] = this.name;
    data['max_retail_price'] = this.maxRetailPrice;
    data['max_regular_price'] = this.maxRegularPrice;
    data['currency_code'] = this.currencyCode;
    data['discount'] = this.discount;
    data['image_urls'] = this.imageUrls;
    data['size_chart_image_urls'] = this.sizeChartImageUrls;
    data['action'] = this.action;
    data['type'] = this.type;
    data['delivery_message'] = this.deliveryMessage;
    data['vendor_name'] = this.vendorName;
    if (this.skuInfo != null) {
      data['sku_info'] = this.skuInfo!.map((v) => v.toJson()).toList();
    }
    data['is_wishlisted'] = this.isWishlisted;
    data['can_wishlist'] = this.canWishlist;
    data['is_exclusive'] = this.isExclusive;
    if (this.messageOnImage != null) {
      data['message_on_image'] =
          this.messageOnImage!.map((v) => v).toList();
    }
    data['stock_status'] = this.stockStatus;
    data['stock_msg'] = this.stockMsg;
    data['is_on_sale'] = this.isOnSale;
    data['brand_name'] = this.brandName;
    data['url_key'] = this.urlKey;
    return data;
  }
}

class SkuInfo {
  String? sku;
  String? size;

  SkuInfo({this.sku, this.size});

  SkuInfo.fromJson(Map<String, dynamic> json) {
    sku = json['sku'];
    size = json['size'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sku'] = this.sku;
    data['size'] = this.size;
    return data;
  }
}

class Filters {
  String? type;
  String? filterName;
  String? displayName;
  List<FilterData>? filterData;
  bool? isMulti;

  Filters(
      {this.type,
        this.filterName,
        this.displayName,
        this.filterData,
        this.isMulti});

  Filters.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    filterName = json['filter_name'];
    displayName = json['display_name'];
    if (json['data'] != null) {
      filterData = <FilterData>[];
      json['data'].forEach((v) {
        filterData!.add(new FilterData.fromJson(v));
      });
    }
    isMulti = json['is_multi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['filter_name'] = this.filterName;
    data['display_name'] = this.displayName;
    if (this.filterData != null) {
      data['data'] = this.filterData!.map((v) => v.toJson()).toList();
    }
    data['is_multi'] = this.isMulti;
    return data;
  }
}

class FilterData {
  String? key;
  int? value;
  bool? isSelected;
  String? otherInfo;

  FilterData({this.key, this.value, this.isSelected, this.otherInfo});

  FilterData.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    value = json['value'];
    isSelected = json['is_selected'];
    otherInfo = json['other_info'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['value'] = this.value;
    data['is_selected'] = this.isSelected;
    data['other_info'] = this.otherInfo;
    return data;
  }
}

class SortBy {
  List<Sortdata>? sortdata;

  SortBy({this.sortdata});

  SortBy.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      sortdata = <Sortdata>[];
      json['data'].forEach((v) {
        sortdata!.add(new Sortdata.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sortdata != null) {
      data['data'] = this.sortdata!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Sortdata {
  String? key;
  String? value;
  bool? isSelected;
  String? otherInfo;

  Sortdata({this.key, this.value, this.isSelected, this.otherInfo});

  Sortdata.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    value = json['value'];
    isSelected = json['is_selected'];
    otherInfo = json['other_info'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['value'] = this.value;
    data['is_selected'] = this.isSelected;
    data['other_info'] = this.otherInfo;
    return data;
  }
}
