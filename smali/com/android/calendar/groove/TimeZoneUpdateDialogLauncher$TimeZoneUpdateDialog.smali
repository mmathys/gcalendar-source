.class public Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;
.super Landroid/app/DialogFragment;
.source "TimeZoneUpdateDialogLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeZoneUpdateDialog"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 190
    const-class v0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;->saveCurrentTimeZoneAsLastDisplayed(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private saveCurrentTimeZoneAsLastDisplayed(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 271
    if-eqz p1, :cond_0

    .line 272
    sget-object v0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;->TAG:Ljava/lang/String;

    const-string v1, "Saving currentTimezone %s as last displayed."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 273
    const-string v0, "preferences_last_display_tz"

    invoke-static {p1, v0, p2}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_0
    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 198
    const-string v1, "accountsToUpdate"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 199
    const-string v1, "currentTimeZoneId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance v1, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;

    invoke-direct {v1}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;-><init>()V

    .line 201
    invoke-virtual {v1, v0}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;->setArguments(Landroid/os/Bundle;)V

    .line 202
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    sget-object v2, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 204
    sget v0, Lcom/android/calendar/R$string;->analytics_action_timezone_dialog_shown:I

    invoke-static {p0, v0}, Lcom/android/calendar/groove/GrooveUtils;->logEvent(Landroid/content/Context;I)V

    .line 205
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 264
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 265
    sget-object v0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;->TAG:Ljava/lang/String;

    const-string v1, "Cancelling dialog."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 266
    invoke-virtual {p0}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "currentTimeZoneId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;->saveCurrentTimeZoneAsLastDisplayed(Landroid/content/Context;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 209
    invoke-virtual {p0}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "accountsToUpdate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 211
    invoke-virtual {p0}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "currentTimeZoneId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-virtual {p0}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 213
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 214
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 215
    invoke-virtual {v3, v4}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v4

    invoke-virtual {v3, v4, v8}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v3

    .line 216
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lcom/android/calendar/R$string;->timezone_update_dialog_title:I

    .line 217
    invoke-virtual {p0, v5}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/android/calendar/R$string;->timezone_update_dialog_message:I

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    .line 218
    invoke-virtual {p0, v5, v6}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->timezone_update_dialog_negative_button:I

    .line 221
    invoke-virtual {p0, v4}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$2;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$2;-><init>(Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->timezone_update_dialog_positive_button:I

    .line 230
    invoke-virtual {p0, v4}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1;

    invoke-direct {v5, p0, v2, v1, v0}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1;-><init>(Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 216
    return-object v0
.end method
