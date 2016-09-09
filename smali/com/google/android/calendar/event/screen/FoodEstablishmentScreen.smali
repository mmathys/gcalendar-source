.class public final Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;
.super Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;
.source "FoodEstablishmentScreen.java"

# interfaces
.implements Lcom/google/android/calendar/event/segment/DetailsLinkSegment$DetailsLinkProvider;
.implements Lcom/google/android/calendar/event/segment/FoodInfoSegment$FoodInfoProvider;


# instance fields
.field private mReservationAction:Lcom/google/api/services/calendar/model/CalendarGoTo;

.field private mRestaurantReservation:Lcom/google/api/services/calendar/model/RestaurantReservation;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/android/calendar/R$layout;->screen_food_establishment:I

    invoke-direct {p0, v0, p1}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;-><init>(ILcom/android/calendar/event/CalendarEventModel;)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;)Lcom/google/api/services/calendar/model/Organization;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->getRestaurantOrganization()Lcom/google/api/services/calendar/model/Organization;

    move-result-object v0

    return-object v0
.end method

.method private getReservationUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->mReservationAction:Lcom/google/api/services/calendar/model/CalendarGoTo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->mReservationAction:Lcom/google/api/services/calendar/model/CalendarGoTo;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/CalendarGoTo;->getUri()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRestaurant()Lcom/google/api/services/calendar/model/Restaurant;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->mRestaurantReservation:Lcom/google/api/services/calendar/model/RestaurantReservation;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->mRestaurantReservation:Lcom/google/api/services/calendar/model/RestaurantReservation;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/RestaurantReservation;->getFoodEstablishment()Lcom/google/api/services/calendar/model/Restaurant;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    .line 180
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRestaurantOrganization()Lcom/google/api/services/calendar/model/Organization;
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->getRestaurant()Lcom/google/api/services/calendar/model/Restaurant;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Restaurant;->getOrganization()Lcom/google/api/services/calendar/model/Organization;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRestaurantReservation()Lcom/google/api/services/calendar/model/RestaurantReservation;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->mRestaurantReservation:Lcom/google/api/services/calendar/model/RestaurantReservation;

    return-object v0
.end method


# virtual methods
.method public getEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->mRestaurantReservation:Lcom/google/api/services/calendar/model/RestaurantReservation;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/RestaurantReservation;->getPartySize()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 221
    :goto_0
    iget-object v3, p0, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 220
    goto :goto_0

    :cond_1
    move v1, v2

    .line 221
    goto :goto_1
.end method

.method public getLabel()Ljava/lang/String;
    .locals 5

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->mRestaurantReservation:Lcom/google/api/services/calendar/model/RestaurantReservation;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/RestaurantReservation;->getPartySize()Ljava/lang/Integer;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->reservation_for:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 227
    :goto_0
    return-object v0

    .line 228
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlaceName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->getRestaurantOrganization()Lcom/google/api/services/calendar/model/Organization;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Organization;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Organization;->getName()Ljava/lang/String;

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    .line 201
    :cond_0
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Organization;->getAddress()Lcom/google/api/services/calendar/model/SmartMailAddress;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 202
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Organization;->getAddress()Lcom/google/api/services/calendar/model/SmartMailAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/SmartMailAddress;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 205
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getSmartmailImage()Lcom/google/api/services/calendar/model/Image;
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->getRestaurant()Lcom/google/api/services/calendar/model/Restaurant;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Restaurant;->getImage()Lcom/google/api/services/calendar/model/Image;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStartTime()Lcom/google/api/services/calendar/model/Time;
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->getRestaurantReservation()Lcom/google/api/services/calendar/model/RestaurantReservation;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/RestaurantReservation;->getStartTime()Lcom/google/api/services/calendar/model/Time;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->view_reservation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0, p1, p2}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 111
    sget v0, Lcom/android/calendar/R$id;->reservation_info:I

    invoke-static {p1, v0, p0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;ILcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 112
    sget v0, Lcom/android/calendar/R$id;->reservation_details:I

    invoke-static {p1, v0, p0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;ILcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 114
    sget v0, Lcom/android/calendar/R$id;->confirmation:I

    new-instance v1, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen$1;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen$1;-><init>(Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;)V

    invoke-static {p1, v0, v1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;ILcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 123
    sget v0, Lcom/android/calendar/R$id;->contact:I

    new-instance v1, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen$2;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen$2;-><init>(Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;)V

    invoke-static {p1, v0, v1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;ILcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 147
    sget v0, Lcom/android/calendar/R$id;->where:I

    new-instance v1, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen$3;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen$3;-><init>(Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;)V

    invoke-static {p1, v0, v1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;ILcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 166
    return-void
.end method

.method protected onUpdateSmartMailInfo()V
    .locals 3

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->getSmartMailInfo()Lcom/google/api/services/calendar/model/SmartMailInfo;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/SmartMailInfo;->getRestaurantReservations()Ljava/util/List;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 57
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/RestaurantReservation;

    iput-object v0, p0, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->mRestaurantReservation:Lcom/google/api/services/calendar/model/RestaurantReservation;

    .line 58
    invoke-direct {p0}, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->getReservationUrl()Ljava/lang/String;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->mUri:Landroid/net/Uri;

    .line 65
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/SmartMailInfo;->getActions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 66
    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/SmartMailInfo;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Action;

    .line 69
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Action;->getGoToAction()Lcom/google/api/services/calendar/model/CalendarGoTo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 70
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Action;->getGoToAction()Lcom/google/api/services/calendar/model/CalendarGoTo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->mReservationAction:Lcom/google/api/services/calendar/model/CalendarGoTo;

    goto :goto_1

    .line 62
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->mUri:Landroid/net/Uri;

    goto :goto_0

    .line 74
    :cond_3
    return-void
.end method

.method public updateHeadline()V
    .locals 5

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->getPlaceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->reservation_at:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->getPlaceName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->setHeadlineTitle(Ljava/lang/String;)V

    .line 97
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/FoodEstablishmentScreen;->mTimelineItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
