.class final Lcom/android/calendar/Utils$4;
.super Landroid/os/AsyncTask;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/Utils;->schedulePeriodicSyncs(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$chargingExtrasInactive:Landroid/os/Bundle;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$defaultExtras:Landroid/os/Bundle;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$noDefaultsExtras:Landroid/os/Bundle;

.field final synthetic val$preLavenderExtras:Landroid/os/Bundle;

.field final synthetic val$surpriseExtras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 3134
    iput-object p1, p0, Lcom/android/calendar/Utils$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/calendar/Utils$4;->val$extras:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/android/calendar/Utils$4;->val$chargingExtrasInactive:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/android/calendar/Utils$4;->val$preLavenderExtras:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/android/calendar/Utils$4;->val$noDefaultsExtras:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/android/calendar/Utils$4;->val$surpriseExtras:Landroid/os/Bundle;

    iput-object p7, p0, Lcom/android/calendar/Utils$4;->val$defaultExtras:Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3134
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calendar/Utils$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3137
    iget-object v0, p0, Lcom/android/calendar/Utils$4;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/calendar/Accounts;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v4

    .line 3138
    iget-object v0, p0, Lcom/android/calendar/Utils$4;->val$context:Landroid/content/Context;

    .line 3139
    # invokes: Lcom/android/calendar/Utils;->getSetOfGoogleAccountsThatShouldBeSyncable(Landroid/content/Context;)Ljava/util/Set;
    invoke-static {v0}, Lcom/android/calendar/Utils;->access$100(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v5

    .line 3140
    array-length v6, v4

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_8

    aget-object v7, v4, v3

    .line 3141
    const-string v0, "com.android.calendar"

    invoke-static {v7, v0}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v8

    .line 3143
    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 3153
    :goto_1
    if-ltz v8, :cond_0

    if-eq v0, v8, :cond_0

    .line 3154
    const-string v8, "com.android.calendar"

    invoke-static {v7, v8, v0}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 3155
    if-ne v0, v1, :cond_0

    .line 3156
    const-string v8, "com.android.calendar"

    invoke-static {v7, v8, v1}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 3160
    :cond_0
    if-ne v0, v1, :cond_7

    .line 3161
    const-string v8, "com.android.calendar"

    iget-object v9, p0, Lcom/android/calendar/Utils$4;->val$extras:Landroid/os/Bundle;

    const-wide/32 v10, 0x15180

    invoke-static {v7, v8, v9, v10, v11}, Landroid/content/ContentResolver;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 3167
    :goto_2
    iget-object v8, p0, Lcom/android/calendar/Utils$4;->val$chargingExtrasInactive:Landroid/os/Bundle;

    invoke-virtual {v8}, Landroid/os/Bundle;->size()I

    move-result v8

    iget-object v9, p0, Lcom/android/calendar/Utils$4;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v9}, Landroid/os/Bundle;->size()I

    move-result v9

    if-eq v8, v9, :cond_1

    .line 3168
    const-string v8, "com.android.calendar"

    iget-object v9, p0, Lcom/android/calendar/Utils$4;->val$chargingExtrasInactive:Landroid/os/Bundle;

    invoke-static {v7, v8, v9}, Landroid/content/ContentResolver;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3173
    :cond_1
    iget-object v8, p0, Lcom/android/calendar/Utils$4;->val$preLavenderExtras:Landroid/os/Bundle;

    invoke-virtual {v8}, Landroid/os/Bundle;->size()I

    move-result v8

    iget-object v9, p0, Lcom/android/calendar/Utils$4;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v9}, Landroid/os/Bundle;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 3174
    const-string v8, "com.android.calendar"

    iget-object v9, p0, Lcom/android/calendar/Utils$4;->val$preLavenderExtras:Landroid/os/Bundle;

    invoke-static {v7, v8, v9}, Landroid/content/ContentResolver;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3176
    const-string v8, "com.android.calendar"

    iget-object v9, p0, Lcom/android/calendar/Utils$4;->val$noDefaultsExtras:Landroid/os/Bundle;

    invoke-static {v7, v8, v9}, Landroid/content/ContentResolver;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3178
    :cond_2
    iget-object v8, p0, Lcom/android/calendar/Utils$4;->val$extras:Landroid/os/Bundle;

    const-string v9, "sync_extra_get_server_date"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 3179
    const-string v8, "com.android.calendar"

    iget-object v9, p0, Lcom/android/calendar/Utils$4;->val$surpriseExtras:Landroid/os/Bundle;

    invoke-static {v7, v8, v9}, Landroid/content/ContentResolver;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3181
    :cond_3
    iget-object v8, p0, Lcom/android/calendar/Utils$4;->val$defaultExtras:Landroid/os/Bundle;

    invoke-virtual {v8}, Landroid/os/Bundle;->size()I

    move-result v8

    iget-object v9, p0, Lcom/android/calendar/Utils$4;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v9}, Landroid/os/Bundle;->size()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 3182
    const-string v8, "com.android.calendar"

    iget-object v9, p0, Lcom/android/calendar/Utils$4;->val$defaultExtras:Landroid/os/Bundle;

    invoke-static {v7, v8, v9}, Landroid/content/ContentResolver;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3185
    :cond_4
    const-string v8, "com.android.calendar"

    .line 3186
    invoke-static {v7, v8}, Landroid/content/ContentResolver;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 3187
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-eq v8, v0, :cond_5

    .line 3188
    const-string v0, "CalUtils"

    const-string v8, "Unexpected number of periodic syncs: %d"

    new-array v9, v1, [Ljava/lang/Object;

    .line 3189
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v2

    .line 3188
    invoke-static {v0, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3140
    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 3143
    goto/16 :goto_1

    .line 3164
    :cond_7
    const-string v8, "com.android.calendar"

    iget-object v9, p0, Lcom/android/calendar/Utils$4;->val$extras:Landroid/os/Bundle;

    invoke-static {v7, v8, v9}, Landroid/content/ContentResolver;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 3192
    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method
