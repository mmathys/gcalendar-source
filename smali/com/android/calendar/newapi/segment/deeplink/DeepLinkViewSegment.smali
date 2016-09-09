.class public Lcom/android/calendar/newapi/segment/deeplink/DeepLinkViewSegment;
.super Lcom/android/calendar/newapi/view/TextTileView;
.source "DeepLinkViewSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/calendar/newapi/segment/common/ViewSegment;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelT::",
        "Lcom/android/calendar/newapi/model/EventHolder;",
        ">",
        "Lcom/android/calendar/newapi/view/TextTileView;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/calendar/newapi/segment/common/ViewSegment;"
    }
.end annotation


# instance fields
.field private final mModel:Lcom/android/calendar/newapi/model/EventHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/newapi/model/EventHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TModelT;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/view/TextTileView;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p2, p0, Lcom/android/calendar/newapi/segment/deeplink/DeepLinkViewSegment;->mModel:Lcom/android/calendar/newapi/model/EventHolder;

    .line 34
    return-void
.end method

.method private setIconImage()V
    .locals 6

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/deeplink/DeepLinkViewSegment;->mModel:Lcom/android/calendar/newapi/model/EventHolder;

    invoke-interface {v0}, Lcom/android/calendar/newapi/model/EventHolder;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    .line 80
    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getDeepLinkData()Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getDeepLinkData()Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;->getDisplayInfo()Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    new-instance v1, Lcom/android/calendar/timely/EventImageRequestKey;

    .line 82
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/deeplink/DeepLinkViewSegment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 83
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/deeplink/DeepLinkViewSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$dimen;->info_icon_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 84
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/deeplink/DeepLinkViewSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/calendar/R$dimen;->info_icon_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 85
    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getDeepLinkData()Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;->getDisplayInfo()Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->getAppIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/calendar/timely/EventImageRequestKey;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 88
    new-instance v0, Lcom/android/calendar/timely/ListenableBitmapDrawable;

    .line 89
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/deeplink/DeepLinkViewSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/android/calendar/BitmapCacheHolder;->getEventImageCache()Lcom/android/calendar/timely/EventImageCache;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/calendar/timely/ListenableBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V

    .line 91
    invoke-virtual {v1}, Lcom/android/calendar/timely/EventImageRequestKey;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/calendar/timely/EventImageRequestKey;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->setDecodeDimensions(II)V

    .line 92
    invoke-virtual {v0, v1}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->bind(Lcom/android/bitmap/RequestKey;)V

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/deeplink/DeepLinkViewSegment;->setIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/calendar/newapi/view/TileView;

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/deeplink/DeepLinkViewSegment;->mModel:Lcom/android/calendar/newapi/model/EventHolder;

    invoke-interface {v0}, Lcom/android/calendar/newapi/model/EventHolder;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    .line 60
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 61
    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getDeepLinkData()Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;->getPlatformUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/deeplink/DeepLinkViewSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 63
    return-void
.end method

.method protected setupView()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/android/calendar/newapi/view/TextTileView;->setupView()V

    .line 39
    sget v0, Lcom/android/calendar/R$drawable;->ic_clear:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/deeplink/DeepLinkViewSegment;->setIconDrawable(I)Lcom/android/calendar/newapi/view/TileView;

    .line 40
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/deeplink/DeepLinkViewSegment;->treatAsButton()Lcom/android/calendar/newapi/view/TileView;

    .line 41
    invoke-virtual {p0, p0}, Lcom/android/calendar/newapi/segment/deeplink/DeepLinkViewSegment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    invoke-static {p0}, Lcom/android/calendar/newapi/view/MaterialViewUtils;->addMaterialListStyling(Landroid/view/ViewGroup;)V

    .line 43
    return-void
.end method

.method public updateUi()V
    .locals 6

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/deeplink/DeepLinkViewSegment;->mModel:Lcom/android/calendar/newapi/model/EventHolder;

    invoke-interface {v0}, Lcom/android/calendar/newapi/model/EventHolder;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/deeplink/DeepLinkViewSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->deep_link_view_in:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getDeepLinkData()Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;->getDisplayInfo()Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->getAppTitle()Ljava/lang/String;

    move-result-object v2

    .line 50
    const-string v3, "%s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/calendar/newapi/segment/deeplink/DeepLinkViewSegment;->setFirstLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 53
    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getDeepLinkData()Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;->getDisplayInfo()Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/deeplinkdata/DisplayInfo;->getLinkShortTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/deeplink/DeepLinkViewSegment;->setSecondLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 54
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/deeplink/DeepLinkViewSegment;->setIconImage()V

    .line 55
    return-void
.end method
