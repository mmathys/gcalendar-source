.class Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen$3;
.super Lcom/google/android/calendar/event/segment/SmartMailAddressSegment$SmartMailAddressProvider;
.source "FoodEstablishmentScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen$3;->this$0:Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;

    invoke-direct {p0}, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment$SmartMailAddressProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Lcom/google/api/services/calendar/model/SmartMailAddress;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen$3;->this$0:Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;

    # invokes: Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->getRestaurantOrganization()Lcom/google/api/services/calendar/model/Organization;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->access$000(Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;)Lcom/google/api/services/calendar/model/Organization;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Organization;->getAddress()Lcom/google/api/services/calendar/model/SmartMailAddress;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getModelData()Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen$3;->this$0:Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;

    iget-object v0, v0, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method public getPlaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen$3;->this$0:Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->getPlaceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
