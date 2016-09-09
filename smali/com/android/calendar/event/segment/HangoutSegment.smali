.class public Lcom/android/calendar/event/segment/HangoutSegment;
.super Lcom/android/calendar/event/segment/ClickableSegment;
.source "HangoutSegment.java"

# interfaces
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelListener;


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mConferenceType:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 50
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/event/segment/HangoutSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/event/segment/HangoutSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/ClickableSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    const-string v0, "join_hangout"

    iput-object v0, p0, Lcom/android/calendar/event/segment/HangoutSegment;->mAnalyticsAction:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private buildNamedHangoutLabel(Lcom/android/calendar/event/CalendarEventModel;Lcom/google/calendar/v2/client/service/api/events/Hangout;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v3, 0x40

    .line 162
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 163
    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 167
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 168
    if-lez v2, :cond_0

    if-lez v3, :cond_0

    .line 169
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/HangoutSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->hangout_domain_named:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    .line 172
    invoke-interface {p2}, Lcom/google/calendar/v2/client/service/api/events/Hangout;->getHangoutName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 171
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p2}, Lcom/google/calendar/v2/client/service/api/events/Hangout;->getHangoutName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateJoinConferenceActionLabel(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 150
    sget v0, Lcom/android/calendar/R$id;->value:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/HangoutSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 151
    const-string v1, "meeting"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/HangoutSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 153
    sget v1, Lcom/android/calendar/R$string;->join_conference_action_label:I

    .line 152
    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :goto_1
    return-void

    .line 154
    :cond_0
    sget v1, Lcom/android/calendar/R$string;->conference_will_be_added_action:I

    goto :goto_0

    .line 156
    :cond_1
    if-eqz p2, :cond_2

    .line 157
    sget v1, Lcom/android/calendar/R$string;->hangout_action:I

    .line 156
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 157
    :cond_2
    sget v1, Lcom/android/calendar/R$string;->hangout_will_be_added_action:I

    goto :goto_2
.end method


# virtual methods
.method protected getDetailId()I
    .locals 1

    .prologue
    .line 146
    sget v0, Lcom/android/calendar/R$id;->detail:I

    return v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/calendar/event/segment/HangoutSegment;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/android/calendar/R$layout;->segment_hangout:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/HangoutSegment;->getDetailId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/HangoutSegment;->setOnMeasureDetailView(I)V

    .line 67
    sget v0, Lcom/android/calendar/R$id;->value:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/HangoutSegment;->setOnMeasureView(I)V

    .line 68
    return-void
.end method

.method public onRefreshModel()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    invoke-super {p0}, Lcom/android/calendar/event/segment/ClickableSegment;->onRefreshModel()V

    .line 74
    iget-object v0, p0, Lcom/android/calendar/event/segment/HangoutSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;

    invoke-interface {v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;->getModelData()Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcom/android/calendar/event/CalendarEventModel;->getHangout()Lcom/google/calendar/v2/client/service/api/events/Hangout;

    move-result-object v2

    .line 79
    iget-boolean v0, v1, Lcom/android/calendar/event/CalendarEventModel;->mIncludeHangout:Z

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/HangoutSegment;->hide()V

    .line 116
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/Hangout;->hasHangout()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 85
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/Hangout;->getHangoutLink()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/segment/HangoutSegment;->mUrl:Ljava/lang/String;

    .line 86
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/Hangout;->getConferenceType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/segment/HangoutSegment;->mConferenceType:Ljava/lang/String;

    .line 87
    iget-object v0, v1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/segment/HangoutSegment;->mAccountName:Ljava/lang/String;

    .line 89
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/Hangout;->getConferenceType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/calendar/event/segment/HangoutSegment;->updateJoinConferenceActionLabel(Ljava/lang/String;Z)V

    .line 91
    invoke-virtual {p0, v4}, Lcom/android/calendar/event/segment/HangoutSegment;->enableAction(Z)V

    .line 93
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/Hangout;->getHangoutName()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 96
    const-string v3, "eventNamedHangout"

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/Hangout;->getConferenceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    invoke-direct {p0, v1, v2}, Lcom/android/calendar/event/segment/HangoutSegment;->buildNamedHangoutLabel(Lcom/android/calendar/event/CalendarEventModel;Lcom/google/calendar/v2/client/service/api/events/Hangout;)Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/HangoutSegment;->getDetailId()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/event/segment/HangoutSegment;->setText(ILjava/lang/CharSequence;)V

    .line 115
    :goto_2
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/HangoutSegment;->show()V

    goto :goto_0

    .line 98
    :cond_2
    const-string v1, "meeting"

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/Hangout;->getConferenceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    const-string v1, "go.meet/"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 105
    :cond_4
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/HangoutSegment;->getDetailId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/HangoutSegment;->hideView(I)V

    goto :goto_2

    .line 108
    :cond_5
    iget-object v0, v1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAllowedConferenceType:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/android/calendar/event/segment/HangoutSegment;->updateJoinConferenceActionLabel(Ljava/lang/String;Z)V

    .line 110
    invoke-virtual {p0, v3}, Lcom/android/calendar/event/segment/HangoutSegment;->enableAction(Z)V

    .line 112
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/HangoutSegment;->getDetailId()I

    move-result v0

    sget v1, Lcom/android/calendar/R$string;->conference_will_be_added:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/segment/HangoutSegment;->setText(II)V

    goto :goto_2
.end method

.method protected startAction()V
    .locals 5

    .prologue
    .line 123
    const-string v0, "meeting"

    iget-object v1, p0, Lcom/android/calendar/event/segment/HangoutSegment;->mConferenceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 128
    const-string v1, "com.google.android.apps.meetings.MEETINGS_ACCOUNT_ID"

    iget-object v2, p0, Lcom/android/calendar/event/segment/HangoutSegment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/HangoutSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendar/event/segment/HangoutSegment;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.apps.meetings"

    .line 130
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/HangoutSegment;->getLogTag()Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/calendar/Utils;->startActivityForUrlWithApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/HangoutSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/event/segment/HangoutSegment;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendar/event/segment/HangoutSegment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->startActivityForUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
