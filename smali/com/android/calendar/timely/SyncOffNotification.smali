.class public Lcom/android/calendar/timely/SyncOffNotification;
.super Lcom/android/calendar/timely/BottomSheet;
.source "SyncOffNotification.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 20
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/timely/BottomSheet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method

.method private inflateView()V
    .locals 2

    .prologue
    .line 24
    sget v0, Lcom/android/calendar/R$id;->button_accept:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/SyncOffNotification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/SyncOffNotification;->tweakLayout()V

    .line 30
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotification;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/calendar/R$layout;->sync_off_notification_body:I

    invoke-static {v0, v1, p0}, Lcom/android/calendar/timely/SyncOffNotification;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    sget v0, Lcom/android/calendar/R$id;->button_accept:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/SyncOffNotification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    sget v0, Lcom/android/calendar/R$id;->button_dismiss:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/SyncOffNotification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private isShowing()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotification;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->getInstance(Landroid/content/Context;)Lcom/android/calendar/timely/SyncOffNotificationsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->isShowing()Z

    move-result v0

    return v0
.end method

.method private logEvent(I)V
    .locals 6

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotification;->mContext:Landroid/content/Context;

    .line 121
    invoke-static {v0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->getInstance(Landroid/content/Context;)Lcom/android/calendar/timely/SyncOffNotificationsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->getAnalyticsActionId()I

    move-result v3

    .line 122
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotification;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/SyncOffNotification;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/timely/SyncOffNotification;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/calendar/R$string;->analytics_category_sync_off_notification:I

    .line 124
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/calendar/timely/SyncOffNotification;->mContext:Landroid/content/Context;

    .line 125
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/timely/SyncOffNotification;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {v4, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 123
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 127
    return-void
.end method

.method private setIsShowing(Z)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotification;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->getInstance(Landroid/content/Context;)Lcom/android/calendar/timely/SyncOffNotificationsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->setIsShowing(Z)V

    .line 114
    return-void
.end method

.method private setText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 104
    sget v0, Lcom/android/calendar/R$id;->sync_off_notification_text:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/SyncOffNotification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method


# virtual methods
.method protected getUniqueTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "SyncOffNotification"

    return-object v0
.end method

.method protected onAccepted()V
    .locals 1

    .prologue
    .line 83
    sget v0, Lcom/android/calendar/R$string;->analytics_label_enabled:I

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/SyncOffNotification;->logEvent(I)V

    .line 84
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotification;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->getInstance(Landroid/content/Context;)Lcom/android/calendar/timely/SyncOffNotificationsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->onEnableSync()V

    .line 85
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/android/calendar/timely/BottomSheet;->onAttachedToWindow()V

    .line 40
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotification;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->getInstance(Landroid/content/Context;)Lcom/android/calendar/timely/SyncOffNotificationsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->setNotification(Lcom/android/calendar/timely/SyncOffNotification;)V

    .line 43
    invoke-direct {p0}, Lcom/android/calendar/timely/SyncOffNotification;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/android/calendar/timely/SyncOffNotification;->inflateView()V

    .line 45
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotification;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->getInstance(Landroid/content/Context;)Lcom/android/calendar/timely/SyncOffNotificationsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/SyncOffNotification;->setText(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/SyncOffNotification;->setVisibility(I)V

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotification;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->getInstance(Landroid/content/Context;)Lcom/android/calendar/timely/SyncOffNotificationsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->onAppOpen()V

    .line 52
    return-void

    .line 48
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/SyncOffNotification;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/android/calendar/R$id;->button_accept:I

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/timely/SyncOffNotification;->hide(ZZ)V

    .line 57
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDismissed()V
    .locals 1

    .prologue
    .line 89
    sget v0, Lcom/android/calendar/R$string;->analytics_label_dismissed:I

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/SyncOffNotification;->logEvent(I)V

    .line 90
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotification;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->getInstance(Landroid/content/Context;)Lcom/android/calendar/timely/SyncOffNotificationsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->onDismiss()V

    .line 91
    return-void
.end method

.method protected onHide()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/SyncOffNotification;->setIsShowing(Z)V

    .line 96
    return-void
.end method

.method protected onShow()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/android/calendar/timely/BottomSheet;->onShow()V

    .line 74
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/SyncOffNotification;->setIsShowing(Z)V

    .line 75
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotification;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->getInstance(Landroid/content/Context;)Lcom/android/calendar/timely/SyncOffNotificationsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->getText()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/SyncOffNotification;->setText(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/SyncOffNotification;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 78
    sget v0, Lcom/android/calendar/R$string;->analytics_label_displayed:I

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/SyncOffNotification;->logEvent(I)V

    .line 79
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/calendar/timely/SyncOffNotification;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/timely/SyncOffNotification;->inflateView()V

    .line 68
    sget v0, Lcom/android/calendar/R$integer;->sync_off_notification_slide_up_delay_ms:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/SyncOffNotification;->showDelayed(I)V

    goto :goto_0
.end method
