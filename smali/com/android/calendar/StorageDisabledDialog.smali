.class public Lcom/android/calendar/StorageDisabledDialog;
.super Landroid/app/AlertDialog;
.source "StorageDisabledDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/android/calendar/StorageDisabledDialog;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/StorageDisabledDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 26
    sget v0, Lcom/android/calendar/R$string;->calendar_storage_disabled_dialog_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/StorageDisabledDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 27
    sget v0, Lcom/android/calendar/R$string;->calendar_storage_disabled_dialog_message:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/StorageDisabledDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 28
    const/4 v0, -0x1

    sget v1, Lcom/android/calendar/R$string;->calendar_storage_disabled_dialog_action:I

    .line 29
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/StorageDisabledDialog$1;

    invoke-direct {v2, p0, p1}, Lcom/android/calendar/StorageDisabledDialog$1;-><init>(Lcom/android/calendar/StorageDisabledDialog;Landroid/content/Context;)V

    .line 28
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/calendar/StorageDisabledDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/StorageDisabledDialog;->setCanceledOnTouchOutside(Z)V

    .line 43
    return-void
.end method
