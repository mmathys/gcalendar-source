.class public Lcom/android/calendar/RequestPermissionsActivity;
.super Lcom/android/calendar/AbstractCalendarActivity;
.source "RequestPermissionsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mNoPermissionLayout:Landroid/view/View;

.field private mRestarting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/android/calendar/RequestPermissionsActivity;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/RequestPermissionsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/calendar/AbstractCalendarActivity;-><init>()V

    return-void
.end method

.method private canShowRequestButton()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 147
    sget-object v2, Lcom/android/calendar/Utils;->PERMISSIONS_MANDATORY:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 148
    invoke-static {p0, v4}, Lcom/google/android/calendar/PermissionsUtil;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 150
    invoke-static {p0, v4}, Lcom/google/android/calendar/PermissionsUtil;->shouldShowRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 154
    :goto_1
    return v0

    .line 147
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static createIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 196
    invoke-static {p0}, Lcom/android/calendar/Utils;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 198
    const-class v1, Lcom/android/calendar/RequestPermissionsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 201
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onMandatoryPermissionsGranted()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/RequestPermissionsActivity;->setResult(I)V

    .line 131
    invoke-virtual {p0}, Lcom/android/calendar/RequestPermissionsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarApplication;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarApplication;->initializeMandatoryPermissionBasedComponents()V

    .line 132
    invoke-static {p0}, Lcom/android/calendar/Utils;->hasContactsPermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->requestContactsPermissions(Landroid/app/Activity;I)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/RequestPermissionsActivity;->finish()V

    goto :goto_0
.end method

.method private showScreenOfDeath()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lcom/android/calendar/RequestPermissionsActivity;->mNoPermissionLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/calendar/RequestPermissionsActivity;->setContentView(Landroid/view/View;)V

    .line 141
    invoke-direct {p0}, Lcom/android/calendar/RequestPermissionsActivity;->updateScreenOfDeath()V

    .line 142
    invoke-virtual {p0, v1}, Lcom/android/calendar/RequestPermissionsActivity;->setResult(I)V

    .line 143
    iget-object v0, p0, Lcom/android/calendar/RequestPermissionsActivity;->mNoPermissionLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    return-void
.end method

.method private updateScreenOfDeath()V
    .locals 2

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/calendar/RequestPermissionsActivity;->canShowRequestButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/calendar/RequestPermissionsActivity;->mButton:Landroid/widget/Button;

    sget v1, Lcom/android/calendar/R$string;->button_permissions_allow_label:I

    invoke-virtual {p0, v1}, Lcom/android/calendar/RequestPermissionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/android/calendar/RequestPermissionsActivity;->mButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/calendar/RequestPermissionsActivity$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/RequestPermissionsActivity$1;-><init>(Lcom/android/calendar/RequestPermissionsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    sget v0, Lcom/android/calendar/R$id;->sub_message:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/RequestPermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/RequestPermissionsActivity;->mButton:Landroid/widget/Button;

    sget v1, Lcom/android/calendar/R$string;->button_permissions_manage_label:I

    invoke-virtual {p0, v1}, Lcom/android/calendar/RequestPermissionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/android/calendar/RequestPermissionsActivity;->mButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/calendar/RequestPermissionsActivity$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/RequestPermissionsActivity$2;-><init>(Lcom/android/calendar/RequestPermissionsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    sget v0, Lcom/android/calendar/R$id;->sub_message:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/RequestPermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/AbstractCalendarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 93
    packed-switch p1, :pswitch_data_0

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 95
    :pswitch_0
    invoke-static {p0}, Lcom/android/calendar/Utils;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/android/calendar/RequestPermissionsActivity;->onMandatoryPermissionsGranted()V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x3eb
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 52
    invoke-super {p0, p1}, Lcom/android/calendar/AbstractCalendarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget v0, Lcom/android/calendar/R$layout;->all_in_one:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/RequestPermissionsActivity;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lcom/android/calendar/RequestPermissionsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$layout;->action_bar_custom_view_all_in_one:I

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/RequestPermissionsActivity;->setCustomActionBar(Landroid/view/View;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/calendar/RequestPermissionsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 59
    sget v2, Lcom/android/calendar/R$drawable;->ic_menu:I

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setLogo(I)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/RequestPermissionsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$layout;->no_calendar_permissions:I

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/RequestPermissionsActivity;->mNoPermissionLayout:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/android/calendar/RequestPermissionsActivity;->mNoPermissionLayout:Landroid/view/View;

    sget v2, Lcom/android/calendar/R$id;->button_permissions:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/RequestPermissionsActivity;->mButton:Landroid/widget/Button;

    .line 63
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/RequestPermissionsActivity;->mRestarting:Z

    .line 64
    return-void

    .line 63
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 183
    invoke-static {p0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/RequestPermissionsActivity;->createAllInOneMenu(Landroid/view/Menu;Ljava/lang/String;)Z

    .line 184
    sget v0, Lcom/android/calendar/R$id;->action_refresh:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_0

    .line 186
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 188
    :cond_0
    invoke-super {p0, p1}, Lcom/android/calendar/AbstractCalendarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 108
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/AbstractCalendarActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 111
    packed-switch p1, :pswitch_data_0

    .line 124
    sget-object v0, Lcom/android/calendar/RequestPermissionsActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected permission request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 127
    :goto_0
    return-void

    .line 113
    :pswitch_0
    invoke-static {p0}, Lcom/android/calendar/Utils;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/android/calendar/RequestPermissionsActivity;->onMandatoryPermissionsGranted()V

    goto :goto_0

    .line 116
    :cond_0
    sget-object v0, Lcom/android/calendar/RequestPermissionsActivity;->TAG:Ljava/lang/String;

    const-string v1, "Permissions denied"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 117
    invoke-direct {p0}, Lcom/android/calendar/RequestPermissionsActivity;->showScreenOfDeath()V

    goto :goto_0

    .line 121
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/calendar/RequestPermissionsActivity;->finish()V

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/RequestPermissionsActivity;->mRestarting:Z

    .line 87
    invoke-super {p0}, Lcom/android/calendar/AbstractCalendarActivity;->onRestart()V

    .line 88
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-super {p0}, Lcom/android/calendar/AbstractCalendarActivity;->onStart()V

    .line 71
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "has_received_calendar_permissions_response"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    sget-object v0, Lcom/android/calendar/RequestPermissionsActivity;->TAG:Ljava/lang/String;

    const-string v1, "We have prompted for calendar permissions before."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 74
    invoke-direct {p0}, Lcom/android/calendar/RequestPermissionsActivity;->showScreenOfDeath()V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-boolean v0, p0, Lcom/android/calendar/RequestPermissionsActivity;->mRestarting:Z

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->requestMandatoryPermissions(Landroid/app/Activity;I)V

    goto :goto_0
.end method
