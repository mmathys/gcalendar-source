.class Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2$1;
.super Ljava/lang/Object;
.source "TimelyEventInfoFragment.java"

# interfaces
.implements Lcom/android/calendar/timely/ListenableBitmapDrawable$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2;->getExtendedBitmapDrawable(Lcom/android/bitmap/BitmapCache;Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2$1;->this$2:Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Lcom/android/calendar/timely/ListenableBitmapDrawable;)V
    .locals 2

    .prologue
    .line 405
    if-eqz p1, :cond_0

    .line 406
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2$1;->this$2:Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2;

    .line 407
    invoke-virtual {v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2;->getEventImageCache()Lcom/android/calendar/timely/EventImageCache;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/calendar/timely/ListenableBitmapDrawable;->getKey()Lcom/android/bitmap/RequestKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/EventImageCache;->getKey(Lcom/android/bitmap/RequestKey;)Lcom/android/calendar/timely/EventImageRequestKey;

    move-result-object v0

    .line 408
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/calendar/timely/EventImageRequestKey;->getUri()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2$1;->this$2:Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2;

    iput-object v0, v1, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2;->mAttributedImageRequestKey:Lcom/android/calendar/timely/EventImageRequestKey;

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2$1;->this$2:Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2;->onImageLoadComplete()V

    .line 413
    return-void
.end method
