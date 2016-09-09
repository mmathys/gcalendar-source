.class Lcom/android/calendar/groove/GrooveScheduleFragment$5;
.super Ljava/lang/Object;
.source "GrooveScheduleFragment.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/GrooveScheduleFragment;->initializeImageBackground(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/GrooveScheduleFragment;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$5;->this$0:Lcom/android/calendar/groove/GrooveScheduleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4

    .prologue
    .line 436
    sget-object v0, Lcom/android/calendar/groove/GrooveScheduleFragment;->TAG:Ljava/lang/String;

    const-string v1, "Background request failed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 437
    return-void
.end method
