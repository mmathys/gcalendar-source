.class Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1;
.super Ljava/lang/Object;
.source "TimeZoneUpdateDialogLauncher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;

.field final synthetic val$accountsToUpdate:Ljava/util/List;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$currentTimeZoneId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1;->this$0:Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;

    iput-object p2, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1;->val$currentTimeZoneId:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1;->val$accountsToUpdate:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1;->val$context:Landroid/content/Context;

    sget v1, Lcom/android/calendar/R$string;->analytics_action_timezone_dialog_accept:I

    invoke-static {v0, v1}, Lcom/android/calendar/groove/GrooveUtils;->logEvent(Landroid/content/Context;I)V

    .line 237
    new-instance v0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1$1;-><init>(Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 256
    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 257
    return-void
.end method
