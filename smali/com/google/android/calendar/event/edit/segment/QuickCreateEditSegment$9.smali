.class Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$9;
.super Lcom/google/android/calendar/timely/location/EventLocationResolverTask;
.source "QuickCreateEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->resolveStructuredLocation(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

.field final synthetic val$placeReference:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$9;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    iput-object p4, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$9;->val$placeReference:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/google/android/calendar/timely/location/EventLocationResolverTask;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public onPostExecute(Lcom/google/calendar/v2/client/service/api/geo/EventLocation;)V
    .locals 2

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$9;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$9;->val$placeReference:Ljava/lang/String;

    # invokes: Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->storeResolvedLocation(Ljava/lang/String;Lcom/google/calendar/v2/client/service/api/geo/EventLocation;)V
    invoke-static {v0, v1, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->access$600(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;Ljava/lang/String;Lcom/google/calendar/v2/client/service/api/geo/EventLocation;)V

    .line 1039
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1035
    check-cast p1, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$9;->onPostExecute(Lcom/google/calendar/v2/client/service/api/geo/EventLocation;)V

    return-void
.end method
