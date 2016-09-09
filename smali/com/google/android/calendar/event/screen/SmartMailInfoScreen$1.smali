.class Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$1;
.super Lcom/google/android/calendar/event/AttributedImageHelper;
.source "SmartMailInfoScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->onInflateHeader(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;

.field final synthetic val$header:[Landroid/view/ViewGroup;

.field final synthetic val$image:Lcom/google/api/services/calendar/model/Image;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;[Landroid/view/ViewGroup;Landroid/view/ViewGroup;ILcom/android/calendar/timely/TimelineItem;Landroid/view/LayoutInflater;[Landroid/view/ViewGroup;Lcom/google/api/services/calendar/model/Image;)V
    .locals 6

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$1;->this$0:Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;

    iput-object p7, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$1;->val$header:[Landroid/view/ViewGroup;

    iput-object p8, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$1;->val$image:Lcom/google/api/services/calendar/model/Image;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/calendar/event/AttributedImageHelper;-><init>([Landroid/view/ViewGroup;Landroid/view/ViewGroup;ILcom/android/calendar/timely/TimelineItem;Landroid/view/LayoutInflater;)V

    return-void
.end method


# virtual methods
.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$1;->val$image:Lcom/google/api/services/calendar/model/Image;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Image;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onImageLoadComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$1;->mAttributedImageRequestKey:Lcom/android/calendar/timely/EventImageRequestKey;

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$1;->val$header:[Landroid/view/ViewGroup;

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$1;->disableAttribution(Landroid/view/ViewGroup;)V

    .line 102
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$1;->mAttributedImageRequestKey:Lcom/android/calendar/timely/EventImageRequestKey;

    invoke-virtual {v0}, Lcom/android/calendar/timely/EventImageRequestKey;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 91
    const-string v1, "imageMetaData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    const-string v1, "imageMetaData"

    .line 93
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/event/AttributedImageHelper$ImageMetadata;

    .line 94
    iget-object v1, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$1;->val$header:[Landroid/view/ViewGroup;

    aget-object v1, v1, v2

    invoke-static {v1, v0}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$1;->enableAttribution(Landroid/view/ViewGroup;Lcom/google/android/calendar/event/AttributedImageHelper$ImageMetadata;)V

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$1;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 97
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_1
    iget-object v1, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$1;->val$image:Lcom/google/api/services/calendar/model/Image;

    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/Image;->getImageMetadataUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$1;->fetch(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$1;->val$header:[Landroid/view/ViewGroup;

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$1;->disableAttribution(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 97
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onImageMetadataLoadComplete(Lcom/google/android/calendar/event/AttributedImageHelper$ImageMetadata;)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$1;->mAttributedImageRequestKey:Lcom/android/calendar/timely/EventImageRequestKey;

    invoke-virtual {v0}, Lcom/android/calendar/timely/EventImageRequestKey;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 113
    const-string v1, "imageMetaData"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 114
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$1;->val$header:[Landroid/view/ViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0, p1}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$1;->enableAttribution(Landroid/view/ViewGroup;Lcom/google/android/calendar/event/AttributedImageHelper$ImageMetadata;)V

    .line 115
    return-void
.end method

.method public onImageMetadataLoadFailed()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$1;->val$header:[Landroid/view/ViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$1;->disableAttribution(Landroid/view/ViewGroup;)V

    .line 120
    return-void
.end method
