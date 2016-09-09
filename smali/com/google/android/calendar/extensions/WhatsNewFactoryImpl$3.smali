.class Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$3;
.super Ljava/lang/Object;
.source "WhatsNewFactoryImpl.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->launchAddAccount(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$3;->this$0:Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;

    iput-object p2, p0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 363
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 403
    :goto_0
    return-void

    .line 370
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 371
    const-string v1, "setupSkipped"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 372
    iget-object v0, p0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    :goto_1
    # getter for: Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception in the AccountManagerCallback"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 376
    :cond_2
    :try_start_1
    const-string v1, "authAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 377
    const-string v1, "authAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 378
    const-string v2, "accountType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 382
    iget-object v1, p0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$3;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/calendar/Accounts;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    .line 383
    const-string v2, "com.google"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    array-length v2, v1

    if-nez v2, :cond_4

    .line 385
    :cond_3
    # getter for: Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Account added, but it\'s not a Google account. accountType = \'%s\', googleAccounts.length = %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    array-length v1, v1

    .line 387
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    .line 385
    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 388
    iget-object v0, p0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 397
    :catch_1
    move-exception v0

    goto :goto_1

    .line 392
    :cond_4
    iget-object v0, p0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$3;->this$0:Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;

    iget-object v2, p0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$3;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->processAccountChanges(Landroid/app/Activity;[Landroid/accounts/Account;)V
    invoke-static {v0, v2, v1}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->access$200(Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;Landroid/app/Activity;[Landroid/accounts/Account;)V
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 397
    :catch_2
    move-exception v0

    goto :goto_1
.end method
