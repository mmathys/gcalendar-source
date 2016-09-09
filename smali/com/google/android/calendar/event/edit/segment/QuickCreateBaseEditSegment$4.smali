.class Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$4;
.super Ljava/lang/Object;
.source "QuickCreateBaseEditSegment.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


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


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment$4;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateBaseEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    .prologue
    .line 699
    sget-object v0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->TAG:Ljava/lang/String;

    const-string v1, "Failed to connect to LocationClient %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 700
    return-void
.end method
