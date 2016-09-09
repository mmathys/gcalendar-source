.class Lcom/google/android/calendar/event/screen/LodgingScreen$1;
.super Lcom/google/android/calendar/event/segment/SmartMailAddressSegment$SmartMailAddressProvider;
.source "LodgingScreen.java"


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
    .line 90
    iput-object p1, p0, Lcom/google/android/calendar/event/screen/LodgingScreen$1;->this$0:Lcom/google/android/calendar/event/screen/LodgingScreen;

    invoke-direct {p0}, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment$SmartMailAddressProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Lcom/google/api/services/calendar/model/SmartMailAddress;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/LodgingScreen$1;->this$0:Lcom/google/android/calendar/event/screen/LodgingScreen;

    # getter for: Lcom/google/android/calendar/event/screen/LodgingScreen;->mLodgingReservation:Lcom/google/api/services/calendar/model/LodgingReservation;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/LodgingScreen;->access$000(Lcom/google/android/calendar/event/screen/LodgingScreen;)Lcom/google/api/services/calendar/model/LodgingReservation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/LodgingScreen$1;->this$0:Lcom/google/android/calendar/event/screen/LodgingScreen;

    # getter for: Lcom/google/android/calendar/event/screen/LodgingScreen;->mLodgingReservation:Lcom/google/api/services/calendar/model/LodgingReservation;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/LodgingScreen;->access$000(Lcom/google/android/calendar/event/screen/LodgingScreen;)Lcom/google/api/services/calendar/model/LodgingReservation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/LodgingReservation;->getLodging()Lcom/google/api/services/calendar/model/Organization;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Organization;->getAddress()Lcom/google/api/services/calendar/model/SmartMailAddress;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getModelData()Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/LodgingScreen$1;->this$0:Lcom/google/android/calendar/event/screen/LodgingScreen;

    iget-object v0, v0, Lcom/google/android/calendar/event/screen/LodgingScreen;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method public getPlaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/LodgingScreen$1;->this$0:Lcom/google/android/calendar/event/screen/LodgingScreen;

    # getter for: Lcom/google/android/calendar/event/screen/LodgingScreen;->mLodgingReservation:Lcom/google/api/services/calendar/model/LodgingReservation;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/LodgingScreen;->access$000(Lcom/google/android/calendar/event/screen/LodgingScreen;)Lcom/google/api/services/calendar/model/LodgingReservation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/LodgingScreen$1;->this$0:Lcom/google/android/calendar/event/screen/LodgingScreen;

    # getter for: Lcom/google/android/calendar/event/screen/LodgingScreen;->mLodgingReservation:Lcom/google/api/services/calendar/model/LodgingReservation;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/LodgingScreen;->access$000(Lcom/google/android/calendar/event/screen/LodgingScreen;)Lcom/google/api/services/calendar/model/LodgingReservation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/LodgingReservation;->getLodging()Lcom/google/api/services/calendar/model/Organization;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Organization;->getName()Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment$SmartMailAddressProvider;->getPlaceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
