.class Lcom/android/calendar/StorageDisabledDialog$1;
.super Ljava/lang/Object;
.source "StorageDisabledDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/StorageDisabledDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/StorageDisabledDialog;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/calendar/StorageDisabledDialog;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/calendar/StorageDisabledDialog$1;->this$0:Lcom/android/calendar/StorageDisabledDialog;

    iput-object p2, p0, Lcom/android/calendar/StorageDisabledDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 33
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string v1, "package"

    const-string v2, "com.android.providers.calendar"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 36
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 37
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    iget-object v1, p0, Lcom/android/calendar/StorageDisabledDialog$1;->val$context:Landroid/content/Context;

    sget-object v2, Lcom/android/calendar/StorageDisabledDialog;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    .line 39
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 40
    return-void
.end method
