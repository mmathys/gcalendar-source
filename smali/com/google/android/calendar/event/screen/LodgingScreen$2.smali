.class Lcom/google/android/calendar/event/screen/LodgingScreen$2;
.super Ljava/lang/Object;
.source "LodgingScreen.java"

# interfaces
.implements Lcom/google/android/calendar/event/segment/TimeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/screen/LodgingScreen;->onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/screen/LodgingScreen;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/screen/LodgingScreen;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/android/calendar/event/screen/LodgingScreen$2;->this$0:Lcom/google/android/calendar/event/screen/LodgingScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTimeData()Lcom/google/api/services/calendar/model/Time;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/LodgingScreen$2;->this$0:Lcom/google/android/calendar/event/screen/LodgingScreen;

    # getter for: Lcom/google/android/calendar/event/screen/LodgingScreen;->mLodgingReservation:Lcom/google/api/services/calendar/model/LodgingReservation;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/LodgingScreen;->access$000(Lcom/google/android/calendar/event/screen/LodgingScreen;)Lcom/google/api/services/calendar/model/LodgingReservation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/LodgingScreen$2;->this$0:Lcom/google/android/calendar/event/screen/LodgingScreen;

    # getter for: Lcom/google/android/calendar/event/screen/LodgingScreen;->mLodgingReservation:Lcom/google/api/services/calendar/model/LodgingReservation;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/LodgingScreen;->access$000(Lcom/google/android/calendar/event/screen/LodgingScreen;)Lcom/google/api/services/calendar/model/LodgingReservation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/LodgingReservation;->getCheckinDate()Lcom/google/api/services/calendar/model/Time;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    .line 126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
