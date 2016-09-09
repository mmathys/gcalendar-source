.class public Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory;
.super Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory;
.source "TimelyPreferencesEditSegmentFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory$AccountSegmentFactory;
    }
.end annotation


# instance fields
.field private final mSegmentIdsToAccounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private final mSegmentIdsToLabels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 40
    iput-object p3, p0, Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory;->mSegmentIdsToLabels:Ljava/util/Map;

    .line 41
    iput-object p4, p0, Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory;->mSegmentIdsToAccounts:Ljava/util/Map;

    .line 43
    invoke-static {p1}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 45
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory;->mSegmentIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 46
    const-string v0, "com.google.android.calendar.timely.settings.smartmail."

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    new-instance v0, Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory$AccountSegmentFactory;

    sget v3, Lcom/android/calendar/R$layout;->preferences_segment_smartmail:I

    const-class v1, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;

    .line 52
    invoke-static {v6, v1}, Lcom/android/calendar/editor/AspectKey;->from(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/calendar/editor/AspectKey;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory$AccountSegmentFactory;-><init>(Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory;Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;Landroid/graphics/Typeface;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, v6, v0}, Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    goto :goto_0

    .line 55
    :cond_1
    const-string v0, "com.google.android.calendar.timely.settings.birthday."

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory$AccountSegmentFactory;

    sget v3, Lcom/android/calendar/R$layout;->setting_birthday_segment:I

    const-class v1, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAspect;

    .line 61
    invoke-static {v6, v1}, Lcom/android/calendar/editor/AspectKey;->from(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/calendar/editor/AspectKey;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory$AccountSegmentFactory;-><init>(Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory;Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;Landroid/graphics/Typeface;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, v6, v0}, Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    goto :goto_0

    .line 66
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory;->mSegmentIdsToLabels:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory;->mSegmentIdsToAccounts:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected getSegmentIds(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    const-string v0, "com.google.android.calendar.timely.settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 76
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory;->mSegmentIds:Ljava/util/List;

    return-object v0
.end method

.method protected segmentNeedsDivider(Lcom/android/calendar/editor/EditSegment;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method
