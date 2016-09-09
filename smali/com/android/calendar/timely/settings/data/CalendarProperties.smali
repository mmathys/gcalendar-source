.class public Lcom/android/calendar/timely/settings/data/CalendarProperties;
.super Ljava/lang/Object;
.source "CalendarProperties.java"

# interfaces
.implements Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;
    }
.end annotation


# static fields
.field private static final sCalendarClassifier:Lcom/android/calendar/CalendarClassifierInterface;

.field private static sInstance:Lcom/android/calendar/timely/settings/data/CalendarProperties;

.field private static sSouthernHemisphereTimezones:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccountsSettingsCache:Lcom/android/calendar/timely/data/AccountsSettingsCache;

.field private final mCalendarsCache:Lcom/android/calendar/timely/data/CalendarsCache;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultColor:I

.field private final mDefaultGridHourHeight:I

.field private final mPropertyChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPropertyValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getCalendarClassifier()Lcom/android/calendar/CalendarClassifierInterface;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->sCalendarClassifier:Lcom/android/calendar/CalendarClassifierInterface;

    .line 89
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 11

    .prologue
    const-wide/16 v8, -0x1

    const/16 v6, 0xe

    const/4 v1, 0x6

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mPropertyValues:Ljava/util/HashMap;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mPropertyChangedListeners:Ljava/util/ArrayList;

    .line 111
    iput-object p1, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mContext:Landroid/content/Context;

    .line 112
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mResources:Landroid/content/res/Resources;

    .line 114
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/calendar/R$color;->calendar_grid_area_selected:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mDefaultColor:I

    .line 115
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/calendar/R$dimen;->grid_hour_height_default:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mDefaultGridHourHeight:I

    .line 117
    invoke-static {}, Lcom/android/calendar/timely/data/AccountsSettingsCache;->getInstance()Lcom/android/calendar/timely/data/AccountsSettingsCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mAccountsSettingsCache:Lcom/android/calendar/timely/data/AccountsSettingsCache;

    .line 118
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mAccountsSettingsCache:Lcom/android/calendar/timely/data/AccountsSettingsCache;

    invoke-virtual {v0, p0}, Lcom/android/calendar/timely/data/AccountsSettingsCache;->addDataChangedListener(Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;)V

    .line 119
    invoke-static {}, Lcom/android/calendar/timely/data/CalendarsCache;->getInstance()Lcom/android/calendar/timely/data/CalendarsCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mCalendarsCache:Lcom/android/calendar/timely/data/CalendarsCache;

    .line 120
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mCalendarsCache:Lcom/android/calendar/timely/data/CalendarsCache;

    invoke-virtual {v0, p0}, Lcom/android/calendar/timely/data/CalendarsCache;->addDataChangedListener(Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;)V

    move v0, v2

    .line 122
    :goto_0
    if-ge v0, v6, :cond_0

    .line 123
    iget-object v3, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mPropertyChangedListeners:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    sget-object v0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->sSouthernHemisphereTimezones:Ljava/util/HashSet;

    if-nez v0, :cond_1

    .line 128
    new-instance v0, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/calendar/R$array;->southern_hemisphere_timezones:I

    .line 129
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->sSouthernHemisphereTimezones:Ljava/util/HashSet;

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 135
    iget-object v3, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mPropertyValues:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v3, Lcom/android/calendar/timely/settings/data/CalendarProperties;->sSouthernHemisphereTimezones:Ljava/util/HashSet;

    .line 139
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 140
    if-eqz v0, :cond_4

    move v0, v1

    .line 141
    :goto_1
    iget-object v3, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mPropertyValues:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mContext:Landroid/content/Context;

    const-string v3, "preference_defaultCalendarId"

    invoke-static {v0, v3, v8, v9}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    .line 146
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mPropertyValues:Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const/4 v4, -0x1

    .line 150
    iget v3, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mDefaultColor:I

    .line 151
    cmp-long v0, v6, v8

    if-nez v0, :cond_5

    .line 154
    invoke-direct {p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->computeNewDefaultCalendar()V

    .line 170
    :goto_2
    iget-object v3, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mContext:Landroid/content/Context;

    const-string v4, "preference_defaultTaskAccount"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v4, v0}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    iget-object v3, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mPropertyValues:Ljava/util/HashMap;

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    if-nez v0, :cond_2

    .line 174
    invoke-direct {p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->computeNewDefaultTaskAccount()V

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getFirstDayOfWeekAsCalendar(Landroid/content/Context;)I

    move-result v0

    .line 179
    iget-object v3, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mPropertyValues:Ljava/util/HashMap;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mContext:Landroid/content/Context;

    .line 183
    invoke-static {v0}, Lcom/android/calendar/Utils;->getAlternateCalendarPref(Landroid/content/Context;)I

    move-result v0

    .line 184
    iget-object v3, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mPropertyValues:Ljava/util/HashMap;

    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 189
    iget-object v3, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mPropertyValues:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getShowWeekNumber(Landroid/content/Context;)Z

    move-result v0

    .line 193
    iget-object v1, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mPropertyValues:Ljava/util/HashMap;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mContext:Landroid/content/Context;

    const-string v1, "preference_showMoreEvents"

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    move v2, v5

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mPropertyValues:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mContext:Landroid/content/Context;

    const-string v1, "preferences_grid_hour_height_p"

    iget v2, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mDefaultGridHourHeight:I

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 204
    iget-object v1, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mPropertyValues:Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mContext:Landroid/content/Context;

    const-string v1, "preferences_grid_hour_height_l"

    iget v2, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mDefaultGridHourHeight:I

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 207
    iget-object v1, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mPropertyValues:Ljava/util/HashMap;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-void

    :cond_4
    move v0, v2

    .line 140
    goto/16 :goto_1

    .line 156
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mCalendarsCache:Lcom/android/calendar/timely/data/CalendarsCache;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/calendar/timely/data/CalendarsCache;->getData(Ljava/lang/Object;)Lcom/android/calendar/timely/data/DataCache$ProviderItem;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/CalendarItem;

    .line 157
    if-eqz v0, :cond_6

    .line 158
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getColor()I

    move-result v3

    .line 159
    iget-object v6, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mAccountsSettingsCache:Lcom/android/calendar/timely/data/AccountsSettingsCache;

    .line 160
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 159
    invoke-virtual {v6, v0}, Lcom/android/calendar/timely/data/AccountsSettingsCache;->getData(Ljava/lang/Object;)Lcom/android/calendar/timely/data/DataCache$ProviderItem;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/AccountItem;

    .line 161
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/AccountItem;->getNoEndTime()Z

    move-result v6

    if-nez v6, :cond_6

    .line 162
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/AccountItem;->getEventDuration()I

    move-result v0

    move v10, v3

    move v3, v0

    move v0, v10

    .line 165
    :goto_3
    iget-object v4, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mPropertyValues:Ljava/util/HashMap;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v3, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mPropertyValues:Ljava/util/HashMap;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_6
    move v0, v3

    move v3, v4

    goto :goto_3
.end method

.method private checkPropertiesChanged(I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v3, 0x0

    .line 322
    packed-switch p1, :pswitch_data_0

    .line 419
    :goto_0
    :pswitch_0
    return-void

    .line 325
    :pswitch_1
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->setPropertyValue(ILjava/lang/Object;)Z

    goto :goto_0

    .line 331
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getPropertyValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 332
    sget-object v1, Lcom/android/calendar/timely/settings/data/CalendarProperties;->sSouthernHemisphereTimezones:Ljava/util/HashSet;

    .line 333
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 334
    if-eqz v0, :cond_0

    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 335
    invoke-virtual {p0, v4, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->setPropertyValue(ILjava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v0, v3

    .line 334
    goto :goto_1

    .line 340
    :pswitch_3
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mContext:Landroid/content/Context;

    const-string v1, "preference_defaultCalendarId"

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 342
    invoke-virtual {p0, v5, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->setPropertyValue(ILjava/lang/Object;)Z

    goto :goto_0

    .line 347
    :pswitch_4
    invoke-virtual {p0, v5}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getPropertyValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 348
    iget-object v1, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mCalendarsCache:Lcom/android/calendar/timely/data/CalendarsCache;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/data/CalendarsCache;->getData(Ljava/lang/Object;)Lcom/android/calendar/timely/data/DataCache$ProviderItem;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/CalendarItem;

    .line 349
    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mDefaultColor:I

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 351
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->setPropertyValue(ILjava/lang/Object;)Z

    goto :goto_0

    .line 350
    :cond_1
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getColor()I

    move-result v0

    goto :goto_2

    .line 356
    :pswitch_5
    invoke-virtual {p0, v5}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getPropertyValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 357
    iget-object v2, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mCalendarsCache:Lcom/android/calendar/timely/data/CalendarsCache;

    invoke-virtual {v2, v0}, Lcom/android/calendar/timely/data/CalendarsCache;->getData(Ljava/lang/Object;)Lcom/android/calendar/timely/data/DataCache$ProviderItem;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/CalendarItem;

    .line 358
    if-nez v0, :cond_3

    .line 360
    :goto_3
    if-eqz v1, :cond_2

    .line 361
    invoke-virtual {v1}, Lcom/android/calendar/timely/data/AccountItem;->getNoEndTime()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 362
    :cond_2
    const/4 v0, -0x1

    .line 361
    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 363
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->setPropertyValue(ILjava/lang/Object;)Z

    goto :goto_0

    .line 359
    :cond_3
    iget-object v1, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mAccountsSettingsCache:Lcom/android/calendar/timely/data/AccountsSettingsCache;

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/data/AccountsSettingsCache;->getData(Ljava/lang/Object;)Lcom/android/calendar/timely/data/DataCache$ProviderItem;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/AccountItem;

    move-object v1, v0

    goto :goto_3

    .line 362
    :cond_4
    invoke-virtual {v1}, Lcom/android/calendar/timely/data/AccountItem;->getEventDuration()I

    move-result v0

    goto :goto_4

    .line 368
    :pswitch_6
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getFirstDayOfWeekAsCalendar(Landroid/content/Context;)I

    move-result v0

    .line 369
    const/4 v1, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->setPropertyValue(ILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 374
    :pswitch_7
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mContext:Landroid/content/Context;

    .line 375
    invoke-static {v0}, Lcom/android/calendar/Utils;->getAlternateCalendarPref(Landroid/content/Context;)I

    move-result v0

    .line 376
    const/16 v1, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->setPropertyValue(ILjava/lang/Object;)Z

    .line 380
    :pswitch_8
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 381
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->setPropertyValue(ILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 386
    :pswitch_9
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getShowWeekNumber(Landroid/content/Context;)Z

    move-result v0

    .line 387
    const/4 v1, 0x7

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->setPropertyValue(ILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 393
    :pswitch_a
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mContext:Landroid/content/Context;

    const-string v1, "preference_showMoreEvents"

    invoke-static {v0, v1, v3}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    move v3, v4

    .line 396
    :cond_5
    const/16 v0, 0xb

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->setPropertyValue(ILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 400
    :pswitch_b
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mContext:Landroid/content/Context;

    const-string v1, "preferences_grid_hour_height_p"

    iget v2, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mDefaultGridHourHeight:I

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 403
    const/16 v1, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->setPropertyValue(ILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 406
    :pswitch_c
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mContext:Landroid/content/Context;

    const-string v1, "preferences_grid_hour_height_l"

    iget v2, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mDefaultGridHourHeight:I

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 409
    const/16 v1, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->setPropertyValue(ILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 414
    :pswitch_d
    iget-object v2, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mContext:Landroid/content/Context;

    const-string v3, "preference_defaultTaskAccount"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->setPropertyValue(ILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_a
        :pswitch_d
        :pswitch_7
    .end packed-switch
.end method

.method private computeNewDefaultCalendar()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 615
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 619
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mCalendarsCache:Lcom/android/calendar/timely/data/CalendarsCache;

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarsCache;->getData()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/CalendarItem;

    .line 620
    sget-object v3, Lcom/android/calendar/timely/settings/data/CalendarProperties;->sCalendarClassifier:Lcom/android/calendar/CalendarClassifierInterface;

    .line 621
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getOwnerAccount()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/calendar/CalendarClassifierInterface;->calculateType(Ljava/lang/String;)I

    move-result v3

    .line 624
    const/4 v4, 0x3

    if-eq v4, v3, :cond_0

    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    const/4 v4, 0x2

    if-eq v4, v3, :cond_0

    .line 631
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->isWritable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 632
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->isPrimary()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 633
    :cond_1
    new-instance v3, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    invoke-direct {v3, v0}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;-><init>(Lcom/android/calendar/timely/data/CalendarItem;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 638
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/calendar/calendarlist/CalendarListUtils;->sortItems(Landroid/content/Context;Ljava/util/List;)V

    .line 642
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 643
    :goto_1
    if-nez v0, :cond_4

    const-wide/16 v0, -0x1

    .line 646
    :goto_2
    invoke-direct {p0, v0, v1, v5}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->setDefaultCalendarIdValue(JZ)V

    .line 647
    return-void

    .line 642
    :cond_3
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;

    goto :goto_1

    .line 644
    :cond_4
    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    iget-object v0, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_2
.end method

.method private computeNewDefaultTaskAccount()V
    .locals 7

    .prologue
    .line 702
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 703
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mCalendarsCache:Lcom/android/calendar/timely/data/CalendarsCache;

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarsCache;->getData()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/CalendarItem;

    .line 704
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 705
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/calendar/Accounts;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v2

    .line 710
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getTaskDataFactory()Lcom/android/calendar/task/BaseTaskDataFactory;

    move-result-object v3

    .line 711
    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 712
    array-length v4, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_2

    aget-object v5, v2, v0

    .line 713
    invoke-virtual {v3, v5}, Lcom/android/calendar/task/BaseTaskDataFactory;->areTasksSupported(Landroid/accounts/Account;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 714
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 715
    iget-object v0, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->setDefaultTaskAccountValue(Ljava/lang/String;)V

    .line 723
    :goto_2
    return-void

    .line 712
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 722
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->setDefaultTaskAccountValue(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getBooleanProperty(Landroid/content/Context;I)Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 284
    invoke-static {p1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getDefaultCalendarId()J
    .locals 4

    .prologue
    .line 651
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDefaultTaskAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 749
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getInstance()Lcom/android/calendar/timely/settings/data/CalendarProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getDefaultTaskAccountValue()Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method private getGridHourPropertyIdFromOrientation()I
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 423
    const/16 v0, 0x9

    .line 425
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/calendar/timely/settings/data/CalendarProperties;
    .locals 2

    .prologue
    .line 219
    sget-object v0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->sInstance:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    const-string v1, "CalendarProperties#initialize(...) must be called first"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->sInstance:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    return-object v0
.end method

.method public static getIntProperty(Landroid/content/Context;I)Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 244
    invoke-static {p0, p1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getProperty(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getProperty(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 236
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getInstance()Lcom/android/calendar/timely/settings/data/CalendarProperties;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getPropertyValue(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getProperty(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 229
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getInstance()Lcom/android/calendar/timely/settings/data/CalendarProperties;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getPropertyValue(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 211
    const-class v1, Lcom/android/calendar/timely/settings/data/CalendarProperties;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->sInstance:Lcom/android/calendar/timely/settings/data/CalendarProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 216
    :goto_0
    monitor-exit v1

    return-void

    .line 215
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/calendar/timely/settings/data/CalendarProperties;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->sInstance:Lcom/android/calendar/timely/settings/data/CalendarProperties;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private maybeComputeNewDefaultTaskAccount()V
    .locals 3

    .prologue
    .line 684
    iget-object v1, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mContext:Landroid/content/Context;

    const-string v2, "preference_defaultTaskAccount"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    .line 685
    invoke-static {v1, v2, v0}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 686
    if-eqz v1, :cond_1

    .line 688
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mCalendarsCache:Lcom/android/calendar/timely/data/CalendarsCache;

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarsCache;->getData()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/CalendarItem;

    .line 689
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    :goto_0
    return-void

    .line 694
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->computeNewDefaultTaskAccount()V

    goto :goto_0
.end method

.method private notifyListeners(ILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 455
    iget-object v1, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mPropertyChangedListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 456
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mPropertyChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 457
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;

    .line 460
    const/16 v2, 0x9

    if-eq p1, v2, :cond_0

    const/16 v2, 0x8

    if-ne p1, v2, :cond_1

    .line 462
    :cond_0
    const/16 p1, 0xa

    .line 464
    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;->onCalendarPropertyChanged(ILjava/lang/Object;)V

    goto :goto_0

    .line 457
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 466
    :cond_2
    return-void
.end method

.method private onAccountsDataChanged(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/calendar/timely/data/DiffData",
            "<",
            "Lcom/android/calendar/timely/data/AccountItem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 546
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mContext:Landroid/content/Context;

    const-string v1, "preference_defaultCalendarId"

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 548
    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 566
    :cond_0
    return-void

    .line 551
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mCalendarsCache:Lcom/android/calendar/timely/data/CalendarsCache;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/calendar/timely/data/CalendarsCache;->getData(Ljava/lang/Object;)Lcom/android/calendar/timely/data/DataCache$ProviderItem;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/CalendarItem;

    .line 552
    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 558
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/DiffData;

    .line 559
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/DiffData;->getId()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 561
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/DiffData;->getNewData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/data/AccountItem;

    invoke-virtual {v1}, Lcom/android/calendar/timely/data/AccountItem;->getNoEndTime()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 562
    const/4 v0, -0x1

    .line 561
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 563
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->setPropertyValue(ILjava/lang/Object;)Z

    goto :goto_0

    .line 562
    :cond_3
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/DiffData;->getNewData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/AccountItem;

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/AccountItem;->getEventDuration()I

    move-result v0

    goto :goto_1
.end method

.method private onCalendarsDataChanged(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/calendar/timely/data/DiffData",
            "<",
            "Lcom/android/calendar/timely/data/CalendarItem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 572
    invoke-direct {p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->maybeComputeNewDefaultTaskAccount()V

    .line 573
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mContext:Landroid/content/Context;

    const-string v1, "preference_defaultCalendarId"

    invoke-static {v0, v1, v4, v5}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 576
    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 577
    invoke-direct {p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->computeNewDefaultCalendar()V

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/DiffData;

    .line 583
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/DiffData;->getId()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 584
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/DiffData;->getNewData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/data/CalendarItem;

    .line 588
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/calendar/timely/data/CalendarItem;->isPrimary()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/android/calendar/timely/data/CalendarItem;->isSelected()Z

    move-result v2

    if-nez v2, :cond_4

    .line 589
    :cond_3
    invoke-direct {p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->computeNewDefaultCalendar()V

    goto :goto_0

    .line 595
    :cond_4
    iget-object v2, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mAccountsSettingsCache:Lcom/android/calendar/timely/data/AccountsSettingsCache;

    .line 596
    invoke-virtual {v1}, Lcom/android/calendar/timely/data/CalendarItem;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/calendar/timely/data/AccountsSettingsCache;->getData(Ljava/lang/Object;)Lcom/android/calendar/timely/data/DataCache$ProviderItem;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/data/AccountItem;

    .line 597
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/calendar/timely/data/AccountItem;->getNoEndTime()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 598
    :cond_5
    const/4 v1, -0x1

    .line 597
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 599
    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->setPropertyValue(ILjava/lang/Object;)Z

    .line 603
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/DiffData;->getNewData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/CalendarItem;

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getColor()I

    move-result v0

    .line 602
    invoke-static {v0}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 604
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->setPropertyValue(ILjava/lang/Object;)Z

    goto :goto_0

    .line 598
    :cond_6
    invoke-virtual {v1}, Lcom/android/calendar/timely/data/AccountItem;->getEventDuration()I

    move-result v1

    goto :goto_1
.end method

.method public static registerListener(Landroid/content/Context;ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 270
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getInstance()Lcom/android/calendar/timely/settings/data/CalendarProperties;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->registerListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 271
    return-void
.end method

.method public static setDefaultCalendarId(J)V
    .locals 2

    .prologue
    .line 675
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getInstance()Lcom/android/calendar/timely/settings/data/CalendarProperties;

    move-result-object v0

    const/4 v1, 0x1

    .line 676
    invoke-direct {v0, p0, p1, v1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->setDefaultCalendarIdValue(JZ)V

    .line 677
    return-void
.end method

.method private setDefaultCalendarIdValue(JZ)V
    .locals 11

    .prologue
    const/4 v4, 0x1

    .line 655
    if-eqz p3, :cond_0

    .line 656
    invoke-static {}, Lcom/android/calendar/timely/data/CalendarsCache;->getInstance()Lcom/android/calendar/timely/data/CalendarsCache;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/data/CalendarsCache;->getData(Ljava/lang/Object;)Lcom/android/calendar/timely/data/DataCache$ProviderItem;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/CalendarItem;

    .line 657
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 658
    new-instance v1, Lcom/android/calendar/AsyncQueryService;

    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/android/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    .line 659
    invoke-static {}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v2

    .line 660
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 661
    const-string v0, "visible"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 663
    new-array v7, v4, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v0

    .line 664
    const/4 v3, 0x0

    sget-object v4, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id=?"

    const-wide/16 v8, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/android/calendar/AsyncQueryService;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 668
    :cond_0
    const/4 v0, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->setPropertyValue(ILjava/lang/Object;)Z

    .line 669
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mContext:Landroid/content/Context;

    const-string v1, "preference_defaultCalendarId"

    invoke-static {v0, v1, p1, p2}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;J)V

    .line 670
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->checkPropertiesChanged(I)V

    .line 671
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->checkPropertiesChanged(I)V

    .line 672
    return-void
.end method

.method public static setDefaultTaskAccount(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 758
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getInstance()Lcom/android/calendar/timely/settings/data/CalendarProperties;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->setDefaultTaskAccountValue(Ljava/lang/String;)V

    .line 759
    return-void
.end method

.method private setDefaultTaskAccountValue(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 753
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->setPropertyValue(ILjava/lang/Object;)Z

    .line 754
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mContext:Landroid/content/Context;

    const-string v1, "preference_defaultTaskAccount"

    invoke-static {v0, v1, p1}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    return-void
.end method

.method public static unregisterListener(Landroid/content/Context;ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 276
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getInstance()Lcom/android/calendar/timely/settings/data/CalendarProperties;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->unregisterListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 277
    return-void
.end method


# virtual methods
.method public checkPropertiesChanged()V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->checkPropertiesChanged(I)V

    .line 300
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->checkPropertiesChanged(I)V

    .line 301
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->checkPropertiesChanged(I)V

    .line 302
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->checkPropertiesChanged(I)V

    .line 303
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->checkPropertiesChanged(I)V

    .line 304
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->checkPropertiesChanged(I)V

    .line 305
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->checkPropertiesChanged(I)V

    .line 306
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->checkPropertiesChanged(I)V

    .line 307
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->checkPropertiesChanged(I)V

    .line 308
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->checkPropertiesChanged(I)V

    .line 309
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->checkPropertiesChanged(I)V

    .line 310
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->checkPropertiesChanged(I)V

    .line 311
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->checkPropertiesChanged(I)V

    .line 312
    return-void
.end method

.method public getDefaultTaskAccountValue()Landroid/accounts/Account;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 731
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 732
    if-eqz v0, :cond_2

    .line 733
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getTaskDataFactory()Lcom/android/calendar/task/BaseTaskDataFactory;

    move-result-object v3

    .line 734
    iget-object v1, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mCalendarsCache:Lcom/android/calendar/timely/data/CalendarsCache;

    invoke-virtual {v1}, Lcom/android/calendar/timely/data/CalendarsCache;->getData()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/data/CalendarItem;

    .line 735
    invoke-virtual {v1}, Lcom/android/calendar/timely/data/CalendarItem;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 736
    iget-object v5, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 737
    invoke-virtual {v3, v1}, Lcom/android/calendar/task/BaseTaskDataFactory;->areTasksSupported(Landroid/accounts/Account;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, v1

    .line 744
    :goto_0
    return-object v0

    .line 742
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->setDefaultTaskAccountValue(Ljava/lang/String;)V

    :cond_2
    move-object v0, v2

    .line 744
    goto :goto_0
.end method

.method public getPropertyValue(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 433
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 434
    invoke-direct {p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getGridHourPropertyIdFromOrientation()I

    move-result p1

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mPropertyValues:Ljava/util/HashMap;

    monitor-enter v1

    .line 438
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mPropertyValues:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 439
    const/4 v0, 0x0

    monitor-exit v1

    .line 442
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mPropertyValues:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDataChanged(ILjava/util/Collection;)V
    .locals 1

    .prologue
    .line 535
    if-nez p1, :cond_1

    .line 536
    invoke-direct {p0, p2}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->onCalendarsDataChanged(Ljava/util/Collection;)V

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 538
    invoke-direct {p0, p2}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->onAccountsDataChanged(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public registerListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V
    .locals 2

    .prologue
    .line 501
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 502
    invoke-direct {p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getGridHourPropertyIdFromOrientation()I

    move-result p1

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mPropertyChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 505
    monitor-enter v0

    .line 506
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 507
    monitor-exit v0

    .line 508
    return-void

    .line 507
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPropertyValue(ILjava/lang/Object;)Z
    .locals 3

    .prologue
    .line 476
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 477
    invoke-direct {p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getGridHourPropertyIdFromOrientation()I

    move-result p1

    .line 480
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mPropertyValues:Ljava/util/HashMap;

    monitor-enter v1

    .line 482
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mPropertyValues:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    const/4 v0, 0x0

    monitor-exit v1

    .line 492
    :goto_0
    return v0

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mPropertyValues:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->notifyListeners(ILjava/lang/Object;)V

    .line 492
    const/4 v0, 0x1

    goto :goto_0

    .line 488
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public unregisterListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V
    .locals 3

    .prologue
    .line 516
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 517
    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 518
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 524
    iget-object v2, p0, Lcom/android/calendar/timely/settings/data/CalendarProperties;->mPropertyChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 525
    monitor-enter v0

    .line 526
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 527
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 521
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 529
    :cond_1
    return-void
.end method
