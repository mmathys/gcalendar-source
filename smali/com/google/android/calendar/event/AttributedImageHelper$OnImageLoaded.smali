.class Lcom/google/android/calendar/event/AttributedImageHelper$OnImageLoaded;
.super Ljava/lang/Object;
.source "AttributedImageHelper.java"

# interfaces
.implements Lcom/android/calendar/timely/ListenableBitmapDrawable$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/AttributedImageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnImageLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/AttributedImageHelper;


# direct methods
.method private constructor <init>(Lcom/google/android/calendar/event/AttributedImageHelper;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/google/android/calendar/event/AttributedImageHelper$OnImageLoaded;->this$0:Lcom/google/android/calendar/event/AttributedImageHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/calendar/event/AttributedImageHelper;Lcom/google/android/calendar/event/AttributedImageHelper$1;)V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/google/android/calendar/event/AttributedImageHelper$OnImageLoaded;-><init>(Lcom/google/android/calendar/event/AttributedImageHelper;)V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Lcom/android/calendar/timely/ListenableBitmapDrawable;)V
    .locals 3

    .prologue
    .line 272
    if-eqz p1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/google/android/calendar/event/AttributedImageHelper$OnImageLoaded;->this$0:Lcom/google/android/calendar/event/AttributedImageHelper;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/AttributedImageHelper;->getEventImageCache()Lcom/android/calendar/timely/EventImageCache;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/calendar/timely/ListenableBitmapDrawable;->getKey()Lcom/android/bitmap/RequestKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/EventImageCache;->getKey(Lcom/android/bitmap/RequestKey;)Lcom/android/calendar/timely/EventImageRequestKey;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/calendar/timely/EventImageRequestKey;->getUri()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/google/android/calendar/event/AttributedImageHelper$OnImageLoaded;->this$0:Lcom/google/android/calendar/event/AttributedImageHelper;

    invoke-virtual {v1}, Lcom/google/android/calendar/event/AttributedImageHelper;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/calendar/timely/EventImageRequestKey;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/google/android/calendar/event/AttributedImageHelper$OnImageLoaded;->this$0:Lcom/google/android/calendar/event/AttributedImageHelper;

    iput-object v0, v1, Lcom/google/android/calendar/event/AttributedImageHelper;->mAttributedImageRequestKey:Lcom/android/calendar/timely/EventImageRequestKey;

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/AttributedImageHelper$OnImageLoaded;->this$0:Lcom/google/android/calendar/event/AttributedImageHelper;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/AttributedImageHelper;->onImageLoadComplete()V

    .line 281
    return-void
.end method
