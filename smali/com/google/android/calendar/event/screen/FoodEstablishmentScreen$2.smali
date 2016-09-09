.class Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen$2;
.super Ljava/lang/Object;
.source "FoodEstablishmentScreen.java"

# interfaces
.implements Lcom/google/android/calendar/event/segment/ContactSegment$ContactProvider;


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
    .line 124
    iput-object p1, p0, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen$2;->this$0:Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnalyticsAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    const-string v0, "tap_contact_number"

    return-object v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen$2;->this$0:Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;

    # invokes: Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->getRestaurantOrganization()Lcom/google/api/services/calendar/model/Organization;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->access$000(Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;)Lcom/google/api/services/calendar/model/Organization;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Organization;->getPhoneNumbers()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Organization;->getPhoneNumbers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 135
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Organization;->getPhoneNumbers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
