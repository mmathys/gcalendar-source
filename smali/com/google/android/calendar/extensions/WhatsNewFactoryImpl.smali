.class public Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;
.super Lcom/android/calendar/WhatsNewFactory;
.source "WhatsNewFactoryImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/calendar/WhatsNewFactory;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->launchAddAccount(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;Landroid/app/Activity;[Landroid/accounts/Account;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->processAccountChanges(Landroid/app/Activity;[Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->enrollIntoTimely(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private enrollIntoTimely(Landroid/content/Context;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 267
    sget-object v0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->TAG:Ljava/lang/String;

    const-string v1, "enrollIntoTimely: %s"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p2, v4, v3

    invoke-static {v0, v1, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 269
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getVersionSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 270
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 271
    const-string v0, "anySeenOOBE"

    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 273
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 274
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 276
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 278
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->isGoogleAccount(Landroid/accounts/Account;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 281
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getClientUpgradedPrefKey(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-interface {v5, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 287
    invoke-static {v4, v0}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->getGoogleClientVersion(Landroid/content/SharedPreferences;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    .line 288
    const-string v9, "0"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 292
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 295
    :goto_1
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getSmartmailAckPrefKey(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v9

    .line 297
    invoke-static {v0}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->getSmartmailAckDefaultForOobe(Landroid/accounts/Account;)I

    move-result v10

    .line 296
    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 298
    const/4 v11, 0x2

    if-ne v11, v10, :cond_1

    .line 299
    const/4 v1, 0x3

    invoke-interface {v5, v9, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move v1, v2

    .line 303
    :cond_1
    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 308
    :cond_2
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v1, v3

    .line 310
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 311
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    invoke-static {v0}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->triggerClientStatusSync(Landroid/accounts/Account;)V

    .line 310
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 314
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 315
    sget-object v0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->TAG:Ljava/lang/String;

    const-string v1, "Initializing accoutns: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 316
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/accounts/Account;

    .line 317
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 318
    new-instance v1, Lcom/google/android/calendar/timely/InitializationAsyncTask;

    invoke-direct {v1, p1}, Lcom/google/android/calendar/timely/InitializationAsyncTask;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/google/android/calendar/timely/InitializationAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 320
    :cond_4
    return-void

    :cond_5
    move v1, v3

    goto :goto_1
.end method

.method private static getGoogleClientVersion(Landroid/content/SharedPreferences;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 326
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getGoogleClientVersionPrefKey(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    .line 327
    const-string v1, "0"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSmartmailAckDefaultForOobe(Landroid/accounts/Account;)I
    .locals 1

    .prologue
    .line 331
    invoke-static {p0}, Lcom/google/android/calendar/utils/AccountUtils;->isSmartmailEnabledByLegacy(Landroid/accounts/Account;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    const/4 v0, 0x3

    .line 331
    :goto_0
    return v0

    .line 333
    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static hasAnyAccountSeenOOBE(Landroid/content/SharedPreferences;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 206
    const-string v0, "anySeenOOBE"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const-string v0, "anySeenOOBE"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 218
    :goto_0
    return v0

    .line 210
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    const-string v4, "seenOOBE_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "anySeenOOBE"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v0, v1

    .line 213
    goto :goto_0

    .line 217
    :cond_2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "anySeenOOBE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v0, v2

    .line 218
    goto :goto_0
.end method

.method private launchAddAccount(Landroid/app/Activity;)V
    .locals 8

    .prologue
    .line 360
    new-instance v6, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$3;

    invoke-direct {v6, p0, p1}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$3;-><init>(Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;Landroid/app/Activity;)V

    .line 406
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 407
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 408
    const-string v1, "introMessage"

    .line 410
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->create_an_account_desc:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 408
    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 411
    const-string v1, "allowSkip"

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 414
    const-string v1, "com.google"

    const-string v2, "com.android.calendar"

    sget-object v3, Lcom/google/android/calendar/Accounts;->GOOGLE_CALENDAR_SYNC_FEATURE:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 423
    return-void
.end method

.method private maybeSendOobeBroadcast(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 193
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getVersionSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 194
    invoke-static {v0}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->hasAnyAccountSeenOOBE(Landroid/content/SharedPreferences;)Z

    move-result v1

    .line 196
    if-eqz v1, :cond_0

    .line 197
    invoke-static {p1, v0}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->sendOobeBroadcast(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 199
    :cond_0
    return-void
.end method

.method private processAccountChanges(Landroid/app/Activity;[Landroid/accounts/Account;)V
    .locals 13

    .prologue
    .line 104
    sget-object v0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->TAG:Ljava/lang/String;

    const-string v1, "processAccountChanges: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 107
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 109
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 110
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 112
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 114
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getVersionSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 115
    invoke-direct {p0, p1}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->maybeSendOobeBroadcast(Landroid/app/Activity;)V

    .line 117
    array-length v8, p2

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v8, :cond_8

    aget-object v9, p2, v2

    .line 118
    invoke-virtual {v9}, Landroid/accounts/Account;->hashCode()I

    move-result v0

    .line 120
    const-string v1, "seenOOBE_"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0xb

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    const/4 v1, 0x0

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 124
    if-nez v10, :cond_2

    invoke-static {v9}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->isGoogleAccount(Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 125
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 126
    invoke-direct {p0, v0, v9}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->setUpgradedNonGoogle(Landroid/content/SharedPreferences$Editor;Landroid/accounts/Account;)V

    .line 127
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 117
    :cond_1
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 131
    :cond_2
    invoke-static {v7, v9}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->getGoogleClientVersion(Landroid/content/SharedPreferences;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v11

    .line 136
    invoke-static {v9}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->getSmartmailAckDefaultForOobe(Landroid/accounts/Account;)I

    move-result v0

    .line 135
    invoke-static {v7, v9, v0}, Lcom/google/android/calendar/utils/AccountUtils;->getSmartmailAck(Landroid/content/SharedPreferences;Landroid/accounts/Account;I)I

    move-result v12

    .line 137
    const/4 v0, 0x2

    if-ne v0, v12, :cond_6

    const/4 v0, 0x1

    move v1, v0

    .line 138
    :goto_2
    const/4 v0, 0x3

    if-ne v0, v12, :cond_7

    const/4 v0, 0x1

    .line 140
    :goto_3
    if-eqz v1, :cond_3

    .line 141
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v1, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_3
    const-string v1, "0"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 146
    if-nez v1, :cond_4

    if-eqz v0, :cond_5

    .line 150
    :cond_4
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_5
    if-nez v10, :cond_1

    if-eqz v1, :cond_1

    .line 156
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 137
    :cond_6
    const/4 v0, 0x0

    move v1, v0

    goto :goto_2

    .line 138
    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    .line 160
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 163
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 165
    sget v1, Lcom/android/calendar/R$string;->email_separator:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-static {v1, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 167
    sget v2, Lcom/android/calendar/R$plurals;->smartmail_enabled_message:I

    .line 169
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    .line 167
    invoke-virtual {v0, v2, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 171
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 172
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 173
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->okay_button:I

    new-instance v2, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$2;

    invoke-direct {v2, p0, p1, v4}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$2;-><init>(Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 174
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 190
    :cond_9
    :goto_4
    return-void

    .line 182
    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 185
    invoke-direct {p0, p1, v3}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->enrollIntoTimely(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_4

    .line 186
    :cond_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 188
    invoke-direct {p0, v6}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->updateGoogleClientVersion(Ljava/util/List;)V

    goto :goto_4
.end method

.method private static sendOobeBroadcast(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 3

    .prologue
    .line 222
    const-string v0, "broadcastedOOBE"

    const/4 v1, 0x0

    .line 223
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 224
    if-nez v0, :cond_0

    .line 225
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.calendar.timely.OOBE_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    const-string v1, "com.google.android.calendar.permission.READ_OOBE"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 227
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "broadcastedOOBE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 229
    :cond_0
    return-void
.end method

.method private setUpgradedNonGoogle(Landroid/content/SharedPreferences$Editor;Landroid/accounts/Account;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 337
    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->isGoogleAccount(Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 339
    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getClientUpgradedPrefKey(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 342
    return-void

    .line 337
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showFullScreenOobe(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 202
    const-class v0, Lcom/google/android/calendar/timely/WhatsNewFullScreenImpl;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->startActivityClassForResult(Ljava/lang/Class;Landroid/app/Activity;)V

    .line 203
    return-void
.end method

.method private static triggerClientStatusSync(Landroid/accounts/Account;)V
    .locals 3

    .prologue
    .line 348
    const-string v0, "sync_extra_update_client_status"

    const/4 v1, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->triggerSyncAdapterSyncWithExtras(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 353
    return-void
.end method

.method private updateGoogleClientVersion(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 426
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 427
    invoke-static {v0}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->triggerClientStatusSync(Landroid/accounts/Account;)V

    goto :goto_0

    .line 429
    :cond_0
    return-void
.end method


# virtual methods
.method public checkForAccountChanges(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 67
    invoke-static {p1}, Lcom/google/android/calendar/Accounts;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    .line 73
    array-length v1, v0

    if-lez v1, :cond_0

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->processAccountChanges(Landroid/app/Activity;[Landroid/accounts/Account;)V

    .line 101
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarApplication;

    .line 81
    new-instance v1, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$1;-><init>(Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;Landroid/app/Activity;Lcom/android/calendar/CalendarApplication;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 100
    invoke-virtual {v1, v0}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onCompleteOobe(Landroid/content/Context;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v5, 0x1

    .line 235
    sget-object v0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->TAG:Ljava/lang/String;

    const-string v1, "onCompleteOobe: %s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 238
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 240
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getVersionSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 241
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 242
    const-string v0, "anySeenOOBE"

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 243
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 244
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getSmartmailAckPrefKey(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v6

    .line 245
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 247
    if-ne v1, v7, :cond_0

    .line 248
    invoke-static {v0}, Lcom/google/android/calendar/utils/AccountUtils;->isSmartmailEnabledByLegacy(Landroid/accounts/Account;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    const/4 v1, 0x3

    .line 251
    :goto_1
    invoke-interface {v4, v6, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 253
    :cond_0
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->isGoogleAccount(Landroid/accounts/Account;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 250
    :cond_1
    const/4 v1, 0x6

    goto :goto_1

    .line 256
    :cond_2
    invoke-direct {p0, v4, v0}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->setUpgradedNonGoogle(Landroid/content/SharedPreferences$Editor;Landroid/accounts/Account;)V

    goto :goto_0

    .line 259
    :cond_3
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 261
    invoke-direct {p0, p1, v2}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->enrollIntoTimely(Landroid/content/Context;Ljava/util/List;)V

    .line 263
    invoke-static {p1, v3}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->sendOobeBroadcast(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 264
    return-void
.end method

.method public shouldShowInitialWelcome(Lcom/android/calendar/event/LaunchInfoActivity;)Z
    .locals 1

    .prologue
    .line 52
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getVersionSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->hasAnyAccountSeenOOBE(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showInitialWelcome(Lcom/android/calendar/event/LaunchInfoActivity;)V
    .locals 3

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->shouldShowInitialWelcome(Lcom/android/calendar/event/LaunchInfoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    sget-object v0, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->TAG:Ljava/lang/String;

    const-string v1, "showInitialWelcome called at a wrong time"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/calendar/extensions/WhatsNewFactoryImpl;->showFullScreenOobe(Landroid/app/Activity;)V

    goto :goto_0
.end method
