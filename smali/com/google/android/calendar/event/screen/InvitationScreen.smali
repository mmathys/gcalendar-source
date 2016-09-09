.class public Lcom/google/android/calendar/event/screen/InvitationScreen;
.super Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;
.source "InvitationScreen.java"


# instance fields
.field private mInvite:Lcom/google/api/services/calendar/model/Event2;

.field private mName:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/android/calendar/R$layout;->screen_invitation:I

    invoke-direct {p0, v0, p1}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;-><init>(ILcom/android/calendar/event/CalendarEventModel;)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/event/screen/InvitationScreen;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/InvitationScreen;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/calendar/event/screen/InvitationScreen;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/InvitationScreen;->mUri:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method protected getSmartmailImage()Lcom/google/api/services/calendar/model/Image;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/InvitationScreen;->mInvite:Lcom/google/api/services/calendar/model/Event2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/event/screen/InvitationScreen;->mInvite:Lcom/google/api/services/calendar/model/Event2;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Event2;->getImage()Lcom/google/api/services/calendar/model/Image;

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
    .line 48
    invoke-super {p0, p1, p2}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 50
    sget v0, Lcom/android/calendar/R$id;->where:I

    new-instance v1, Lcom/google/android/calendar/event/screen/InvitationScreen$1;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/event/screen/InvitationScreen$1;-><init>(Lcom/google/android/calendar/event/screen/InvitationScreen;)V

    invoke-static {p1, v0, v1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;ILcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 59
    sget v0, Lcom/android/calendar/R$id;->confirmation:I

    new-instance v1, Lcom/google/android/calendar/event/screen/InvitationScreen$2;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/event/screen/InvitationScreen$2;-><init>(Lcom/google/android/calendar/event/screen/InvitationScreen;)V

    invoke-static {p1, v0, v1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;ILcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 68
    sget v0, Lcom/android/calendar/R$id;->open_event:I

    new-instance v1, Lcom/google/android/calendar/event/screen/InvitationScreen$3;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/event/screen/InvitationScreen$3;-><init>(Lcom/google/android/calendar/event/screen/InvitationScreen;)V

    invoke-static {p1, v0, v1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;ILcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 90
    return-void
.end method

.method public onUpdateSmartMailInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/InvitationScreen;->getSmartMailInfo()Lcom/google/api/services/calendar/model/SmartMailInfo;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/SmartMailInfo;->getEvents()Ljava/util/List;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 107
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Event2;

    iput-object v0, p0, Lcom/google/android/calendar/event/screen/InvitationScreen;->mInvite:Lcom/google/api/services/calendar/model/Event2;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/InvitationScreen;->mInvite:Lcom/google/api/services/calendar/model/Event2;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/calendar/event/screen/InvitationScreen;->mInvite:Lcom/google/api/services/calendar/model/Event2;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Event2;->getPublisher()Lcom/google/api/services/calendar/model/Organization;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/calendar/event/screen/InvitationScreen;->mInvite:Lcom/google/api/services/calendar/model/Event2;

    .line 112
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Event2;->getPublisher()Lcom/google/api/services/calendar/model/Organization;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Organization;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/InvitationScreen;->mInvite:Lcom/google/api/services/calendar/model/Event2;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Event2;->getPublisher()Lcom/google/api/services/calendar/model/Organization;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Organization;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/calendar/event/screen/InvitationScreen;->mUri:Landroid/net/Uri;

    .line 115
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Organization;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Organization;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/screen/InvitationScreen;->mName:Ljava/lang/String;

    .line 124
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/InvitationScreen;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/screen/InvitationScreen;->mName:Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_2
    iput-object v2, p0, Lcom/google/android/calendar/event/screen/InvitationScreen;->mUri:Landroid/net/Uri;

    .line 122
    iput-object v2, p0, Lcom/google/android/calendar/event/screen/InvitationScreen;->mName:Ljava/lang/String;

    goto :goto_0
.end method
