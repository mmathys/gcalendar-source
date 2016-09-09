.class public Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferencesSegmentFactory;
.super Lcom/android/calendar/editor/BaseEditSegmentFactory;
.source "TimelyHolidayPreferencesSegmentFactory.java"


# instance fields
.field private final mSegmentIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/calendar/editor/BaseEditSegmentFactory;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferencesSegmentFactory;->mSegmentIds:Ljava/util/List;

    .line 23
    invoke-static {p1}, Lcom/google/android/calendar/Accounts;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v2

    .line 25
    const-string v0, "com.android.calendar.settings.holidays.color"

    new-instance v1, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;

    sget v3, Lcom/android/calendar/R$layout;->preferences_segment_color:I

    const-string v4, "com.android.calendar.settings.holidays.color"

    const-class v5, Lcom/android/calendar/event/data/InputAspectColor;

    .line 29
    invoke-static {v4, v5}, Lcom/android/calendar/editor/AspectKey;->from(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/calendar/editor/AspectKey;

    move-result-object v4

    invoke-direct {v1, p1, v3, v4}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;-><init>(Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;)V

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferencesSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 32
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferencesSegmentFactory;->mSegmentIds:Ljava/util/List;

    const-string v1, "com.android.calendar.settings.holidays.color"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 35
    const-string v4, "com.google"

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    const-string v4, "com.android.calendar.settings.holidays.subs."

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    :goto_1
    new-instance v4, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;

    sget v5, Lcom/android/calendar/R$layout;->preferences_segment_holidays:I

    const-class v6, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;

    .line 43
    invoke-static {v0, v6}, Lcom/android/calendar/editor/AspectKey;->from(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/calendar/editor/AspectKey;

    move-result-object v6

    invoke-direct {v4, p1, v5, v6}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;-><init>(Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;)V

    .line 38
    invoke-virtual {p0, v0, v4}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferencesSegmentFactory;->registerSegmentFactoryMethod(Ljava/lang/String;Lcom/android/calendar/editor/BaseEditSegmentFactory$FactoryMethod;)V

    .line 44
    iget-object v4, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferencesSegmentFactory;->mSegmentIds:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 47
    :cond_2
    return-void
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
    .line 51
    const-string v0, "com.android.calendar.settings.holidays"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 52
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferencesSegmentFactory;->mSegmentIds:Ljava/util/List;

    return-object v0
.end method
