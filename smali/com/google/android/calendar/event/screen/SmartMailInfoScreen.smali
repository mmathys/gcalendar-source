.class public abstract Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;
.super Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;
.source "SmartMailInfoScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$CommonConfirmationProvider;
    }
.end annotation


# instance fields
.field private mEventSource:Lcom/google/calendar/v2/client/service/api/events/EventSource;

.field protected mModel:Lcom/android/calendar/event/CalendarEventModel;

.field private mSmartMailInfo:Lcom/google/api/services/calendar/model/SmartMailInfo;


# direct methods
.method protected constructor <init>(ILcom/android/calendar/event/CalendarEventModel;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;-><init>(I)V

    .line 145
    invoke-direct {p0, p2}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->setModel(Lcom/android/calendar/event/CalendarEventModel;)V

    .line 146
    return-void
.end method

.method private getAttributableImage()Lcom/google/api/services/calendar/model/Image;
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->getSmartmailImage()Lcom/google/api/services/calendar/model/Image;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Image;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Image;->getImageMetadataUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 183
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setModel(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 160
    iput-object p1, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    .line 161
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    invoke-interface {v0}, Lcom/android/calendar/event/EventExtras;->getEventSource()Lcom/google/calendar/v2/client/service/api/events/EventSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->mEventSource:Lcom/google/calendar/v2/client/service/api/events/EventSource;

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/api/services/calendar/model/SmartMailInfo;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    check-cast v0, Lcom/google/api/services/calendar/model/SmartMailInfo;

    iput-object v0, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->mSmartMailInfo:Lcom/google/api/services/calendar/model/SmartMailInfo;

    .line 171
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->onUpdateSmartMailInfo()V

    .line 172
    return-void

    .line 164
    :cond_0
    iput-object v1, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->mEventSource:Lcom/google/calendar/v2/client/service/api/events/EventSource;

    goto :goto_0

    .line 169
    :cond_1
    iput-object v1, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->mSmartMailInfo:Lcom/google/api/services/calendar/model/SmartMailInfo;

    goto :goto_1
.end method


# virtual methods
.method protected final getEventSource()Lcom/google/calendar/v2/client/service/api/events/EventSource;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->mEventSource:Lcom/google/calendar/v2/client/service/api/events/EventSource;

    return-object v0
.end method

.method protected final getSmartMailInfo()Lcom/google/api/services/calendar/model/SmartMailInfo;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->mSmartMailInfo:Lcom/google/api/services/calendar/model/SmartMailInfo;

    return-object v0
.end method

.method protected abstract getSmartmailImage()Lcom/google/api/services/calendar/model/Image;
.end method

.method public onInflateHeader(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v5

    .line 77
    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/google/android/calendar/event/AttributedImageHelper;->shouldHaveImage(Landroid/content/res/Resources;Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->getAttributableImage()Lcom/google/api/services/calendar/model/Image;

    move-result-object v8

    .line 79
    if-eqz v8, :cond_0

    .line 81
    const/4 v0, 0x1

    new-array v2, v0, [Landroid/view/ViewGroup;

    .line 82
    new-instance v0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$1;

    sget v4, Lcom/android/calendar/R$layout;->headline_timely_attribution:I

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, v2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$1;-><init>(Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;[Landroid/view/ViewGroup;Landroid/view/ViewGroup;ILcom/android/calendar/timely/TimelineItem;Landroid/view/LayoutInflater;[Landroid/view/ViewGroup;Lcom/google/api/services/calendar/model/Image;)V

    iput-object v0, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->mImageHelper:Lcom/android/calendar/event/ImageHelper;

    .line 122
    aget-object v0, v2, v9

    if-eqz v0, :cond_0

    .line 123
    aget-object v0, v2, v9

    iput-object v0, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->mEventHeader:Landroid/view/ViewGroup;

    .line 124
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->mImageHelper:Lcom/android/calendar/event/ImageHelper;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/ImageHelper;->relocateEditButton(Landroid/view/View;)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->mEventHeader:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 129
    invoke-super {p0, p1, p2}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->onInflateHeader(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 131
    :cond_1
    return-void
.end method

.method public onRefreshModel(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->setModel(Lcom/android/calendar/event/CalendarEventModel;)V

    .line 136
    invoke-super {p0, p1}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->onRefreshModel(Lcom/android/calendar/event/CalendarEventModel;)V

    .line 137
    return-void
.end method

.method protected abstract onUpdateSmartMailInfo()V
.end method
