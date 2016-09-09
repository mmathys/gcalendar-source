.class public Lcom/google/android/calendar/event/segment/ConfirmationSegment;
.super Lcom/android/calendar/event/segment/ClickableSegment;
.source "ConfirmationSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/event/segment/ConfirmationSegment$ConfirmationProvider;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEmailSourceIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/google/android/calendar/event/segment/ConfirmationSegment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/calendar/event/segment/ConfirmationSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/event/segment/ConfirmationSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/ClickableSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    const-string v0, "view_source_email"

    iput-object v0, p0, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->mAnalyticsAction:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private static doesGmailSupportViewSource(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 180
    const-string v1, "com.google.android.gm"

    .line 181
    invoke-static {p0, v1, v0}, Lcom/google/android/calendar/event/PackageUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 182
    if-eqz v1, :cond_0

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const v2, 0x4c4d7a

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getValueId()I
    .locals 1

    .prologue
    .line 189
    sget v0, Lcom/android/calendar/R$id;->value:I

    return v0
.end method

.method private setViewSourceEmailIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->mEmailSourceIntent:Landroid/content/Intent;

    .line 145
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 146
    if-nez v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-static {v0}, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->doesGmailSupportViewSource(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 152
    sget-object v0, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->TAG:Ljava/lang/String;

    const-string v1, "Gmail doesn\'t support viewing source"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "google_calendar_view_source_email"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 159
    if-eqz v1, :cond_0

    .line 163
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mail.google.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 165
    const-string v2, "plid"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_0

    .line 168
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.gm.intent.VIEW_PLID"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->mEmailSourceIntent:Landroid/content/Intent;

    .line 169
    iget-object v2, p0, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->mEmailSourceIntent:Landroid/content/Intent;

    const-string v3, "com.google.android.gm"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    iget-object v2, p0, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->mEmailSourceIntent:Landroid/content/Intent;

    const-string v3, "permalink"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    iget-object v2, p0, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->mEmailSourceIntent:Landroid/content/Intent;

    const-string v3, "plid"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    iget-object v1, p0, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->mEmailSourceIntent:Landroid/content/Intent;

    invoke-static {v1}, Lcom/android/calendar/Utils;->prepareIntentToOpenLink(Landroid/content/Intent;)V

    .line 173
    invoke-static {p2}, Lcom/google/android/gms/identity/accounts/api/AccountData;->forAccount(Ljava/lang/String;)Lcom/google/android/gms/identity/accounts/api/AccountData;

    move-result-object v1

    .line 174
    iget-object v2, p0, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->mEmailSourceIntent:Landroid/content/Intent;

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/identity/accounts/api/AccountDataUtil;->addAccountData(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/identity/accounts/api/AccountData;)Z

    goto :goto_0
.end method

.method private showViewSource(Z)V
    .locals 2

    .prologue
    .line 196
    sget v0, Lcom/android/calendar/R$id;->view_source:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 197
    if-eqz v1, :cond_0

    .line 198
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 200
    :cond_0
    return-void

    .line 198
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 2

    .prologue
    .line 71
    sget v0, Lcom/android/calendar/R$layout;->segment_confirmation:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 72
    sget v0, Lcom/android/calendar/R$id;->view_source:I

    sget v1, Lcom/android/calendar/R$dimen;->info_segment_detail_text_extend_padding:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->setOnMeasureDetailView(II)V

    .line 73
    invoke-direct {p0}, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->getValueId()I

    move-result v0

    sget v1, Lcom/android/calendar/R$dimen;->smart_info_segment_title_text_extend_padding:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->setOnMeasureMultiLineView(II)V

    .line 75
    return-void
.end method

.method public onRefreshModel()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    invoke-super {p0}, Lcom/android/calendar/event/segment/ClickableSegment;->onRefreshModel()V

    .line 93
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    instance-of v0, v0, Lcom/google/android/calendar/event/segment/ConfirmationSegment$ConfirmationProvider;

    if-eqz v0, :cond_3

    .line 94
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 95
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/google/android/calendar/event/segment/ConfirmationSegment$ConfirmationProvider;

    .line 96
    invoke-interface {v0}, Lcom/google/android/calendar/event/segment/ConfirmationSegment$ConfirmationProvider;->getConfirmationNumber()Ljava/lang/String;

    move-result-object v4

    .line 97
    invoke-interface {v0}, Lcom/google/android/calendar/event/segment/ConfirmationSegment$ConfirmationProvider;->getUri()Ljava/lang/String;

    move-result-object v5

    .line 99
    invoke-interface {v0}, Lcom/google/android/calendar/event/segment/ConfirmationSegment$ConfirmationProvider;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->setViewSourceEmailIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->mEmailSourceIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    move v0, v1

    .line 102
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->enableAction(Z)V

    .line 104
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 106
    sget v5, Lcom/android/calendar/R$string;->confirmation_id:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v2

    invoke-virtual {v3, v5, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-direct {p0}, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->getValueId()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->showText(ILjava/lang/CharSequence;)V

    .line 109
    invoke-direct {p0, v0}, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->showViewSource(Z)V

    .line 121
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 100
    goto :goto_0

    .line 110
    :cond_1
    if-eqz v0, :cond_2

    .line 113
    invoke-direct {p0}, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->getValueId()I

    move-result v0

    sget v1, Lcom/android/calendar/R$string;->view_email:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->showValueOrHideSegment(ILjava/lang/String;)V

    .line 114
    invoke-direct {p0, v2}, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->showViewSource(Z)V

    goto :goto_1

    .line 116
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->hide()V

    goto :goto_1

    .line 119
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->hide()V

    goto :goto_1
.end method

.method protected startAction()V
    .locals 3

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->mEmailSourceIntent:Landroid/content/Intent;

    sget-object v2, Lcom/google/android/calendar/event/segment/ConfirmationSegment;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    .line 130
    return-void
.end method
