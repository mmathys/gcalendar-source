.class Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2;
.super Lcom/google/android/calendar/event/AttributedImageHelper;
.source "TimelyEventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->onInflateHeader(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;

.field final synthetic val$header:[Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;[Landroid/view/ViewGroup;Landroid/view/ViewGroup;ILcom/android/calendar/timely/TimelineItem;Landroid/view/LayoutInflater;[Landroid/view/ViewGroup;)V
    .locals 6

    .prologue
    .line 343
    iput-object p1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2;->this$1:Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;

    iput-object p7, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2;->val$header:[Landroid/view/ViewGroup;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/calendar/event/AttributedImageHelper;-><init>([Landroid/view/ViewGroup;Landroid/view/ViewGroup;ILcom/android/calendar/timely/TimelineItem;Landroid/view/LayoutInflater;)V

    return-void
.end method

.method private createImageMetadata()Lcom/google/android/calendar/event/AttributedImageHelper$ImageMetadata;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 367
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 368
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2;->mAttributedImageRequestKey:Lcom/android/calendar/timely/EventImageRequestKey;

    .line 370
    invoke-virtual {v0}, Lcom/android/calendar/timely/EventImageRequestKey;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-static {v0}, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;->getAttributionsForPlacePhoto(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 371
    if-nez v0, :cond_0

    move-object v0, v1

    .line 380
    :goto_0
    return-object v0

    .line 374
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 375
    new-instance v4, Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;

    invoke-direct {v4, v0}, Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 377
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 378
    goto :goto_0

    .line 380
    :cond_2
    new-instance v0, Lcom/google/android/calendar/event/AttributedImageHelper$ImageMetadata;

    invoke-direct {v0, v2}, Lcom/google/android/calendar/event/AttributedImageHelper$ImageMetadata;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method protected getExtendedBitmapDrawable(Lcom/android/bitmap/BitmapCache;Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;
    .locals 3

    .prologue
    .line 398
    new-instance v0, Lcom/android/calendar/timely/ListenableBitmapDrawable;

    .line 399
    invoke-virtual {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/android/calendar/timely/ListenableBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V

    .line 400
    new-instance v1, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2$1;-><init>(Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/ListenableBitmapDrawable;->setOnLoadCompleteListener(Lcom/android/calendar/timely/ListenableBitmapDrawable$OnLoadCompleteListener;)V

    .line 415
    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    return-object v0
.end method

.method public onImageLoadComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 347
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2;->mAttributedImageRequestKey:Lcom/android/calendar/timely/EventImageRequestKey;

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2;->val$header:[Landroid/view/ViewGroup;

    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2;->disableAttribution(Landroid/view/ViewGroup;)V

    .line 364
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2;->mAttributedImageRequestKey:Lcom/android/calendar/timely/EventImageRequestKey;

    invoke-virtual {v0}, Lcom/android/calendar/timely/EventImageRequestKey;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 353
    const-string v0, "imageMetaData"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    const-string v0, "imageMetaData"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/event/AttributedImageHelper$ImageMetadata;

    .line 358
    :goto_1
    if-nez v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2;->val$header:[Landroid/view/ViewGroup;

    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2;->disableAttribution(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 356
    :cond_1
    invoke-direct {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2;->createImageMetadata()Lcom/google/android/calendar/event/AttributedImageHelper$ImageMetadata;

    move-result-object v0

    goto :goto_1

    .line 361
    :cond_2
    const-string v2, "imageMetaData"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 362
    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2;->val$header:[Landroid/view/ViewGroup;

    aget-object v1, v1, v3

    invoke-static {v1, v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2;->enableAttribution(Landroid/view/ViewGroup;Lcom/google/android/calendar/event/AttributedImageHelper$ImageMetadata;)V

    goto :goto_0
.end method

.method public onImageMetadataLoadComplete(Lcom/google/android/calendar/event/AttributedImageHelper$ImageMetadata;)V
    .locals 0

    .prologue
    .line 421
    return-void
.end method

.method public onImageMetadataLoadFailed()V
    .locals 0

    .prologue
    .line 426
    return-void
.end method
