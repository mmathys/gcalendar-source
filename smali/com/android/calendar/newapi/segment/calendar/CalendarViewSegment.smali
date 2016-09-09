.class public Lcom/android/calendar/newapi/segment/calendar/CalendarViewSegment;
.super Lcom/android/calendar/newapi/view/TextTileView;
.source "CalendarViewSegment.java"

# interfaces
.implements Lcom/android/calendar/newapi/segment/common/ViewSegment;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelT::",
        "Lcom/android/calendar/newapi/model/CalendarHolder;",
        ":",
        "Lcom/android/calendar/newapi/model/CalendarStoreHolder;",
        ">",
        "Lcom/android/calendar/newapi/view/TextTileView;",
        "Lcom/android/calendar/newapi/segment/common/ViewSegment;"
    }
.end annotation


# instance fields
.field private final mModel:Lcom/android/calendar/newapi/model/CalendarHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/newapi/model/CalendarHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TModelT;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/view/TextTileView;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p2, p0, Lcom/android/calendar/newapi/segment/calendar/CalendarViewSegment;->mModel:Lcom/android/calendar/newapi/model/CalendarHolder;

    .line 19
    return-void
.end method


# virtual methods
.method protected setupView()V
    .locals 2

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/calendar/newapi/view/TextTileView;->setupView()V

    .line 24
    sget v0, Lcom/android/calendar/R$drawable;->ic_calendar:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/calendar/CalendarViewSegment;->setIconDrawable(I)Lcom/android/calendar/newapi/view/TileView;

    .line 25
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/calendar/CalendarViewSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->describe_calendar_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/calendar/CalendarViewSegment;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 26
    invoke-static {p0}, Lcom/android/calendar/newapi/view/MaterialViewUtils;->addMaterialListStyling(Landroid/view/ViewGroup;)V

    .line 27
    return-void
.end method

.method public updateUi()V
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/calendar/CalendarViewSegment;->mModel:Lcom/android/calendar/newapi/model/CalendarHolder;

    check-cast v0, Lcom/android/calendar/newapi/model/CalendarStoreHolder;

    invoke-interface {v0}, Lcom/android/calendar/newapi/model/CalendarStoreHolder;->getCalendarStore()Lcom/android/calendar/newapi/model/CalendarStore;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/calendar/CalendarViewSegment;->mModel:Lcom/android/calendar/newapi/model/CalendarHolder;

    invoke-interface {v1}, Lcom/android/calendar/newapi/model/CalendarHolder;->getCalendarId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/model/CalendarStore;->getDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/calendar/CalendarViewSegment;->mModel:Lcom/android/calendar/newapi/model/CalendarHolder;

    invoke-interface {v1}, Lcom/android/calendar/newapi/model/CalendarHolder;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/calendar/CalendarViewSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$string;->primary_calendar_display_name:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 36
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/calendar/CalendarViewSegment;->setFirstLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 37
    invoke-virtual {p0, v1}, Lcom/android/calendar/newapi/segment/calendar/CalendarViewSegment;->setSecondLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 38
    return-void
.end method
