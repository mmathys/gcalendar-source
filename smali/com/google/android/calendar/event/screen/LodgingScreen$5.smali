.class Lcom/google/android/calendar/event/screen/LodgingScreen$5;
.super Ljava/lang/Object;
.source "LodgingScreen.java"

# interfaces
.implements Lcom/google/android/calendar/event/segment/ContactSegment$ContactProvider;


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
    .line 153
    iput-object p1, p0, Lcom/google/android/calendar/event/screen/LodgingScreen$5;->this$0:Lcom/google/android/calendar/event/screen/LodgingScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnalyticsAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    const-string v0, "tap_contact_number"

    return-object v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/LodgingScreen$5;->this$0:Lcom/google/android/calendar/event/screen/LodgingScreen;

    # getter for: Lcom/google/android/calendar/event/screen/LodgingScreen;->mLodgingReservation:Lcom/google/api/services/calendar/model/LodgingReservation;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/LodgingScreen;->access$000(Lcom/google/android/calendar/event/screen/LodgingScreen;)Lcom/google/api/services/calendar/model/LodgingReservation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/LodgingScreen$5;->this$0:Lcom/google/android/calendar/event/screen/LodgingScreen;

    # getter for: Lcom/google/android/calendar/event/screen/LodgingScreen;->mLodgingReservation:Lcom/google/api/services/calendar/model/LodgingReservation;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/LodgingScreen;->access$000(Lcom/google/android/calendar/event/screen/LodgingScreen;)Lcom/google/api/services/calendar/model/LodgingReservation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/LodgingReservation;->getLodging()Lcom/google/api/services/calendar/model/Organization;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Organization;->getPhoneNumbers()Ljava/util/List;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 166
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
