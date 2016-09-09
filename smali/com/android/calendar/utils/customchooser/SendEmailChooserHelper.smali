.class public Lcom/android/calendar/utils/customchooser/SendEmailChooserHelper;
.super Ljava/lang/Object;
.source "SendEmailChooserHelper.java"


# static fields
.field private static sInstance:Lcom/android/calendar/utils/customchooser/SendEmailChooserHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/android/calendar/utils/customchooser/SendEmailChooserHelper;

    invoke-direct {v0}, Lcom/android/calendar/utils/customchooser/SendEmailChooserHelper;-><init>()V

    sput-object v0, Lcom/android/calendar/utils/customchooser/SendEmailChooserHelper;->sInstance:Lcom/android/calendar/utils/customchooser/SendEmailChooserHelper;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method private applyCustomization(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 117
    const-string v0, "com.google.android.gm"

    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    const-string v0, "fromAccountString"

    invoke-virtual {p2, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const-string v0, "com.google.android.apps.inbox"

    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/calendar/utils/customchooser/SendEmailChooserHelper;->addAccountDataUsingUtils(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/calendar/utils/customchooser/SendEmailChooserHelper;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/calendar/utils/customchooser/SendEmailChooserHelper;->sInstance:Lcom/android/calendar/utils/customchooser/SendEmailChooserHelper;

    return-object v0
.end method


# virtual methods
.method protected addAccountDataUsingUtils(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 107
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "SendEmailChooserHelper"

    const-string v1, "ownerAccount parameter can not be empty."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/identity/accounts/api/AccountData;->forAccount(Ljava/lang/String;)Lcom/google/android/gms/identity/accounts/api/AccountData;

    move-result-object v0

    .line 112
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/identity/accounts/api/AccountDataUtil;->addAccountData(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/identity/accounts/api/AccountData;)Z

    goto :goto_0
.end method

.method public createCustomChooser(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 59
    invoke-virtual {v2, p3, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 60
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-static {p3, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    .line 64
    :cond_0
    new-instance v1, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v1, v2}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 66
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 67
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 68
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 69
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 71
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 72
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 73
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-direct {p0, p1, v6, v5, p4}, Lcom/android/calendar/utils/customchooser/SendEmailChooserHelper;->applyCustomization(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)V

    .line 77
    new-instance v7, Landroid/content/pm/LabeledIntent;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 78
    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iget v0, v0, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-direct {v7, v6, v5, v8, v0}, Landroid/content/pm/LabeledIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 77
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 82
    :cond_1
    invoke-static {}, Lcom/android/calendar/Utils;->isMOrLater()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 95
    :goto_2
    invoke-static {v0, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 98
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/pm/LabeledIntent;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/LabeledIntent;

    .line 99
    const-string v2, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object v0, v1

    .line 101
    goto :goto_0

    .line 92
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_2
.end method
