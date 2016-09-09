.class Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$3;
.super Ljava/lang/Object;
.source "QuickCreateBaseEditSegment.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->fetchCurrentLocationForQuery(Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;

.field final synthetic val$queryManager:Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;)V
    .locals 0

    .prologue
    .line 678
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$3;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;

    iput-object p2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$3;->val$queryManager:Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 682
    :try_start_0
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$3;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;

    .line 683
    # getter for: Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->mLocationClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {v1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;->access$100(Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v0

    .line 684
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$3;->val$queryManager:Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;

    invoke-virtual {v1, v0}, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->setCurrentLocation(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    :goto_0
    return-void

    .line 685
    :catch_0
    move-exception v0

    .line 686
    sget-object v1, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->TAG:Ljava/lang/String;

    const-string v2, "Security exception when getting location"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 687
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$3;->val$queryManager:Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->setCurrentLocation(Landroid/location/Location;)V

    goto :goto_0
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$3;->val$queryManager:Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/event/edit/segment/BaseAnnotatedSuggestQueryManager;->setCurrentLocation(Landroid/location/Location;)V

    .line 694
    return-void
.end method
