.class public Lcom/android/timezonepicker/TimeZoneData;
.super Ljava/lang/Object;
.source "TimeZoneData.java"


# static fields
.field private static mBackupCountryCodes:[Ljava/lang/String;

.field private static mBackupCountryLocale:Ljava/util/Locale;

.field private static mBackupCountryNames:[Ljava/lang/String;


# instance fields
.field private mAlternateDefaultTimeZoneId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCountryCodeToNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDate:Ljava/util/Date;

.field private mDefaultTimeZoneCountry:Ljava/lang/String;

.field public mDefaultTimeZoneId:Ljava/lang/String;

.field private mDefaultTimeZoneInfo:Lcom/android/timezonepicker/TimeZoneInfo;

.field private mHasTimeZonesInHrOffset:[Z

.field private mPalestineDisplayName:Ljava/lang/String;

.field private mTimeZoneIdToLabel:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTimeZoneNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTimeZones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/timezonepicker/TimeZoneInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTimeZonesByCountry:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mTimeZonesByOffsets:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 7

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/timezonepicker/TimeZoneData;->mTimeZoneNames:Ljava/util/HashSet;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/timezonepicker/TimeZoneData;->mCountryCodeToNameMap:Ljava/util/HashMap;

    .line 60
    const/16 v0, 0x28

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/timezonepicker/TimeZoneData;->mHasTimeZonesInHrOffset:[Z

    .line 66
    iput-object p1, p0, Lcom/android/timezonepicker/TimeZoneData;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/android/timezonepicker/TimeZoneData;->mAlternateDefaultTimeZoneId:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/timezonepicker/TimeZoneData;->mDefaultTimeZoneId:Ljava/lang/String;

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 69
    new-instance v2, Ljava/util/Date;

    const-wide/16 v4, 0x0

    cmp-long v3, p3, v4

    if-nez v3, :cond_0

    move-wide p3, v0

    :cond_0
    invoke-direct {v2, p3, p4}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/android/timezonepicker/TimeZoneData;->mDate:Ljava/util/Date;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/timezonepicker/R$string;->palestine_display_name:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/timezonepicker/TimeZoneData;->mPalestineDisplayName:Ljava/lang/String;

    .line 73
    invoke-direct {p0, p1}, Lcom/android/timezonepicker/TimeZoneData;->loadTimezones(Landroid/content/Context;)V

    .line 75
    const-string v2, "TimeZoneData"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Time to load time zones (ms): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method private createTimeZoneInfo(Ljava/util/TimeZone;Ljava/lang/String;)Lcom/android/timezonepicker/TimeZoneInfo;
    .locals 4

    .prologue
    .line 110
    new-instance v1, Lcom/android/timezonepicker/TimeZoneInfo;

    invoke-direct {v1, p1, p2}, Lcom/android/timezonepicker/TimeZoneInfo;-><init>(Ljava/util/TimeZone;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneData;->mTimeZoneIdToLabel:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneData;->mTimeZoneIdToLabel:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/android/timezonepicker/TimeZoneInfo;->mTzId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneData;->mTimeZoneIdToLabel:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/android/timezonepicker/TimeZoneInfo;->mTzId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/android/timezonepicker/TimeZoneInfo;->mDisplayName:Ljava/lang/String;

    .line 117
    :goto_0
    return-object v1

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneData;->mDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    const/4 v2, 0x1

    .line 115
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 114
    invoke-virtual {p1, v0, v2, v3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/timezonepicker/TimeZoneInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method

.method private getCountryNames(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 439
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 441
    const-string v0, "PS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneData;->mPalestineDisplayName:Ljava/lang/String;

    .line 447
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 467
    :goto_1
    return-object v0

    .line 444
    :cond_0
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 451
    :cond_1
    sget-object v0, Lcom/android/timezonepicker/TimeZoneData;->mBackupCountryCodes:[Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/timezonepicker/TimeZoneData;->mBackupCountryLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 452
    :cond_2
    sput-object v1, Lcom/android/timezonepicker/TimeZoneData;->mBackupCountryLocale:Ljava/util/Locale;

    .line 453
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/timezonepicker/R$array;->backup_country_codes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/timezonepicker/TimeZoneData;->mBackupCountryCodes:[Ljava/lang/String;

    .line 455
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/timezonepicker/R$array;->backup_country_names:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/timezonepicker/TimeZoneData;->mBackupCountryNames:[Ljava/lang/String;

    .line 459
    :cond_3
    sget-object v0, Lcom/android/timezonepicker/TimeZoneData;->mBackupCountryCodes:[Ljava/lang/String;

    array-length v0, v0

    sget-object v1, Lcom/android/timezonepicker/TimeZoneData;->mBackupCountryNames:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 461
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_5

    .line 462
    sget-object v2, Lcom/android/timezonepicker/TimeZoneData;->mBackupCountryCodes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 463
    sget-object v1, Lcom/android/timezonepicker/TimeZoneData;->mBackupCountryNames:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_1

    .line 461
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move-object v0, p2

    .line 467
    goto :goto_1
.end method

.method private getIdenticalTimeZoneInTheCountry(Lcom/android/timezonepicker/TimeZoneInfo;Ljava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/timezonepicker/TimeZoneInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/timezonepicker/TimeZoneInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 472
    const/4 v0, 0x0

    .line 473
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/timezonepicker/TimeZoneInfo;

    .line 474
    invoke-virtual {v0, p1}, Lcom/android/timezonepicker/TimeZoneInfo;->hasSameRules(Lcom/android/timezonepicker/TimeZoneInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 475
    iget-object v3, v0, Lcom/android/timezonepicker/TimeZoneInfo;->mCountry:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 476
    iget-object v0, p1, Lcom/android/timezonepicker/TimeZoneInfo;->mCountry:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 485
    :cond_0
    :goto_1
    return v1

    .line 479
    :cond_1
    iget-object v0, v0, Lcom/android/timezonepicker/TimeZoneInfo;->mCountry:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/timezonepicker/TimeZoneInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 484
    goto :goto_0

    .line 485
    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private indexByOffsets(ILcom/android/timezonepicker/TimeZoneInfo;)V
    .locals 4

    .prologue
    .line 250
    invoke-virtual {p2}, Lcom/android/timezonepicker/TimeZoneInfo;->getNowOffsetMillis()I

    move-result v0

    .line 251
    int-to-long v0, v0

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v1, v0, 0x14

    .line 252
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneData;->mHasTimeZonesInHrOffset:[Z

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 254
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneData;->mTimeZonesByOffsets:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 255
    if-nez v0, :cond_0

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    iget-object v2, p0, Lcom/android/timezonepicker/TimeZoneData;->mTimeZonesByOffsets:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 259
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    return-void
.end method

.method private loadTimezones(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/timezonepicker/TimeZoneData;->populateDisplayNameOverrides(Landroid/content/res/Resources;)V

    .line 132
    new-instance v4, Ljava/util/ArrayList;

    const/16 v0, 0x2bc

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    invoke-direct {p0, p1, v4}, Lcom/android/timezonepicker/TimeZoneData;->loadTzsInZoneTab(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v3

    .line 134
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v5

    .line 140
    array-length v6, v5

    move v1, v2

    :goto_0
    if-ge v1, v6, :cond_4

    aget-object v0, v5, v1

    .line 141
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 140
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 150
    :cond_1
    const-string v7, "Etc/GMT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 154
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 155
    if-nez v7, :cond_3

    .line 156
    const-string v7, "TimeZoneData"

    const-string v8, "Timezone not found: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 160
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v7, v0}, Lcom/android/timezonepicker/TimeZoneData;->createTimeZoneInfo(Ljava/util/TimeZone;Ljava/lang/String;)Lcom/android/timezonepicker/TimeZoneInfo;

    move-result-object v0

    .line 162
    invoke-direct {p0, v0, v4}, Lcom/android/timezonepicker/TimeZoneData;->getIdenticalTimeZoneInTheCountry(Lcom/android/timezonepicker/TimeZoneInfo;Ljava/util/ArrayList;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 166
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 176
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 177
    if-nez v5, :cond_6

    .line 223
    :cond_5
    return-void

    .line 181
    :cond_6
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/timezonepicker/TimeZoneData;->mTimeZones:Ljava/util/ArrayList;

    .line 183
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/timezonepicker/TimeZoneInfo;

    .line 184
    iget-object v1, p0, Lcom/android/timezonepicker/TimeZoneData;->mTimeZones:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    const/4 v1, 0x1

    move v3, v1

    move-object v1, v0

    :goto_3
    if-ge v3, v5, :cond_8

    .line 186
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/timezonepicker/TimeZoneInfo;

    .line 187
    invoke-virtual {v0, v1}, Lcom/android/timezonepicker/TimeZoneInfo;->compareTo(Lcom/android/timezonepicker/TimeZoneInfo;)I

    move-result v6

    if-nez v6, :cond_7

    move-object v0, v1

    .line 185
    :goto_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_3

    .line 190
    :cond_7
    iget-object v1, p0, Lcom/android/timezonepicker/TimeZoneData;->mTimeZones:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 194
    :cond_8
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/timezonepicker/TimeZoneData;->mTimeZonesByCountry:Ljava/util/LinkedHashMap;

    .line 195
    new-instance v0, Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/timezonepicker/TimeZoneData;->mHasTimeZonesInHrOffset:[Z

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/timezonepicker/TimeZoneData;->mTimeZonesByOffsets:Landroid/util/SparseArray;

    .line 198
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneData;->mTimeZones:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/timezonepicker/TimeZoneInfo;

    .line 201
    iget-object v1, p0, Lcom/android/timezonepicker/TimeZoneData;->mTimeZonesByCountry:Ljava/util/LinkedHashMap;

    iget-object v4, v0, Lcom/android/timezonepicker/TimeZoneInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 202
    if-nez v1, :cond_9

    .line 203
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 204
    iget-object v4, p0, Lcom/android/timezonepicker/TimeZoneData;->mTimeZonesByCountry:Ljava/util/LinkedHashMap;

    iget-object v5, v0, Lcom/android/timezonepicker/TimeZoneInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-direct {p0, v2, v0}, Lcom/android/timezonepicker/TimeZoneData;->indexByOffsets(ILcom/android/timezonepicker/TimeZoneInfo;)V

    .line 214
    iget-object v1, v0, Lcom/android/timezonepicker/TimeZoneInfo;->mDisplayName:Ljava/lang/String;

    const-string v4, ":00"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 215
    iget-object v1, p0, Lcom/android/timezonepicker/TimeZoneData;->mTimeZoneNames:Ljava/util/HashSet;

    iget-object v0, v0, Lcom/android/timezonepicker/TimeZoneInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 222
    goto :goto_5
.end method

.method private loadTzsInZoneTab(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/HashSet;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/timezonepicker/TimeZoneInfo;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 271
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 273
    const/4 v0, 0x0

    .line 280
    :try_start_0
    const-string v1, "backward"

    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v0

    .line 281
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 284
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 286
    const-string v5, "#"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 290
    const-string v5, "\t+"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 291
    const/4 v5, 0x1

    aget-object v5, v1, v5

    .line 292
    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    aget-object v1, v1, v6

    .line 294
    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 295
    if-nez v6, :cond_6

    .line 296
    const-string v6, "TimeZoneData"

    const-string v7, "Timezone not found: "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 312
    :catch_0
    move-exception v1

    .line 313
    :try_start_2
    const-string v1, "TimeZoneData"

    const-string v4, "Failed to read \'backward\' file."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 316
    if-eqz v0, :cond_1

    .line 317
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 330
    :cond_1
    :goto_2
    :try_start_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 331
    const-string v1, "zone.tab"

    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v1

    .line 332
    :try_start_5
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 334
    :cond_2
    :goto_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 335
    const-string v5, "#"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 340
    const-string v5, "\t"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 341
    const/4 v5, 0x2

    aget-object v5, v0, v5

    .line 342
    const/4 v6, 0x0

    aget-object v6, v0, v6

    .line 343
    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 344
    if-nez v7, :cond_a

    .line 345
    const-string v6, "TimeZoneData"

    const-string v7, "Timezone not found: "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 420
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 421
    :goto_5
    :try_start_6
    const-string v1, "TimeZoneData"

    const-string v3, "Failed to read \'zone.tab\'."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 424
    if-eqz v0, :cond_3

    .line 425
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 431
    :cond_3
    :goto_6
    return-object v2

    .line 296
    :cond_4
    :try_start_8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 315
    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 316
    :goto_7
    if-eqz v1, :cond_5

    .line 317
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 320
    :cond_5
    :goto_8
    throw v0

    .line 300
    :cond_6
    :try_start_a
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v6, p0, Lcom/android/timezonepicker/TimeZoneData;->mDefaultTimeZoneId:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/timezonepicker/TimeZoneData;->mDefaultTimeZoneId:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    iput-object v5, p0, Lcom/android/timezonepicker/TimeZoneData;->mAlternateDefaultTimeZoneId:Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 316
    :cond_7
    if-eqz v0, :cond_1

    .line 317
    :try_start_b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_2

    .line 319
    :catch_2
    move-exception v1

    goto/16 :goto_2

    .line 345
    :cond_8
    :try_start_c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_4

    .line 423
    :catchall_1
    move-exception v0

    .line 424
    :goto_9
    if-eqz v1, :cond_9

    .line 425
    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 428
    :cond_9
    :goto_a
    throw v0

    .line 355
    :cond_a
    if-nez v6, :cond_b

    :try_start_e
    const-string v0, "Etc/GMT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 356
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 362
    :cond_b
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneData;->mCountryCodeToNameMap:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 363
    if-nez v0, :cond_c

    .line 364
    invoke-direct {p0, v4, v6}, Lcom/android/timezonepicker/TimeZoneData;->getCountryNames(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    iget-object v8, p0, Lcom/android/timezonepicker/TimeZoneData;->mCountryCodeToNameMap:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :cond_c
    iget-object v6, p0, Lcom/android/timezonepicker/TimeZoneData;->mDefaultTimeZoneId:Ljava/lang/String;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/timezonepicker/TimeZoneData;->mDefaultTimeZoneCountry:Ljava/lang/String;

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/android/timezonepicker/TimeZoneData;->mAlternateDefaultTimeZoneId:Ljava/lang/String;

    .line 373
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 374
    iput-object v0, p0, Lcom/android/timezonepicker/TimeZoneData;->mDefaultTimeZoneCountry:Ljava/lang/String;

    .line 375
    iget-object v6, p0, Lcom/android/timezonepicker/TimeZoneData;->mDefaultTimeZoneId:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 376
    if-eqz v6, :cond_d

    .line 377
    invoke-direct {p0, v6, v0}, Lcom/android/timezonepicker/TimeZoneData;->createTimeZoneInfo(Ljava/util/TimeZone;Ljava/lang/String;)Lcom/android/timezonepicker/TimeZoneInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/timezonepicker/TimeZoneData;->mDefaultTimeZoneInfo:Lcom/android/timezonepicker/TimeZoneInfo;

    .line 379
    iget-object v6, p0, Lcom/android/timezonepicker/TimeZoneData;->mDefaultTimeZoneInfo:Lcom/android/timezonepicker/TimeZoneInfo;

    invoke-direct {p0, v6, p2}, Lcom/android/timezonepicker/TimeZoneData;->getIdenticalTimeZoneInTheCountry(Lcom/android/timezonepicker/TimeZoneInfo;Ljava/util/ArrayList;)I

    move-result v6

    .line 381
    if-ne v6, v9, :cond_f

    .line 386
    iget-object v6, p0, Lcom/android/timezonepicker/TimeZoneData;->mDefaultTimeZoneInfo:Lcom/android/timezonepicker/TimeZoneInfo;

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_d
    :goto_b
    invoke-direct {p0, v7, v0}, Lcom/android/timezonepicker/TimeZoneData;->createTimeZoneInfo(Ljava/util/TimeZone;Ljava/lang/String;)Lcom/android/timezonepicker/TimeZoneInfo;

    move-result-object v0

    .line 403
    invoke-direct {p0, v0, p2}, Lcom/android/timezonepicker/TimeZoneData;->getIdenticalTimeZoneInTheCountry(Lcom/android/timezonepicker/TimeZoneInfo;Ljava/util/ArrayList;)I

    move-result v6

    .line 404
    if-ne v6, v9, :cond_e

    .line 409
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    :cond_e
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 388
    :cond_f
    iget-object v8, p0, Lcom/android/timezonepicker/TimeZoneData;->mDefaultTimeZoneInfo:Lcom/android/timezonepicker/TimeZoneInfo;

    invoke-virtual {p2, v6, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_b

    .line 424
    :cond_10
    if-eqz v1, :cond_3

    .line 425
    :try_start_f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    goto/16 :goto_6

    .line 427
    :catch_3
    move-exception v0

    goto/16 :goto_6

    .line 319
    :catch_4
    move-exception v1

    goto/16 :goto_2

    :catch_5
    move-exception v1

    goto/16 :goto_8

    .line 427
    :catch_6
    move-exception v0

    goto/16 :goto_6

    :catch_7
    move-exception v1

    goto :goto_a

    .line 423
    :catchall_2
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_9

    .line 420
    :catch_8
    move-exception v1

    goto/16 :goto_5

    .line 315
    :catchall_3
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_7
.end method

.method private populateDisplayNameOverrides(Landroid/content/res/Resources;)V
    .locals 7

    .prologue
    .line 226
    sget v0, Lcom/android/timezonepicker/R$array;->timezone_rename_ids:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 227
    sget v0, Lcom/android/timezonepicker/R$array;->timezone_rename_labels:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 229
    array-length v0, v2

    .line 230
    array-length v1, v2

    array-length v4, v3

    if-eq v1, v4, :cond_0

    .line 231
    const-string v0, "TimeZoneData"

    array-length v1, v2

    array-length v4, v3

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x4a

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "timezone_rename_ids len="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " timezone_rename_labels len="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    array-length v0, v2

    array-length v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 235
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/timezonepicker/TimeZoneData;->mTimeZoneIdToLabel:Ljava/util/HashMap;

    .line 236
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 237
    iget-object v4, p0, Lcom/android/timezonepicker/TimeZoneData;->mTimeZoneIdToLabel:Ljava/util/HashMap;

    aget-object v5, v2, v1

    aget-object v6, v3, v1

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    :cond_1
    return-void
.end method


# virtual methods
.method public findIndexByTimeZoneIdSlow(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    iget-object v1, p0, Lcom/android/timezonepicker/TimeZoneData;->mTimeZones:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/timezonepicker/TimeZoneInfo;

    .line 94
    iget-object v0, v0, Lcom/android/timezonepicker/TimeZoneInfo;->mTzId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    :goto_1
    return v1

    .line 97
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public get(I)Lcom/android/timezonepicker/TimeZoneInfo;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneData;->mTimeZones:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/timezonepicker/TimeZoneInfo;

    return-object v0
.end method

.method public getDefaultTimeZoneIndex()I
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneData;->mTimeZones:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/timezonepicker/TimeZoneData;->mDefaultTimeZoneInfo:Lcom/android/timezonepicker/TimeZoneInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getTimeZonesByOffset(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    add-int/lit8 v0, p1, 0x14

    .line 264
    iget-object v1, p0, Lcom/android/timezonepicker/TimeZoneData;->mHasTimeZonesInHrOffset:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    if-gez v0, :cond_1

    .line 265
    :cond_0
    const/4 v0, 0x0

    .line 267
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/timezonepicker/TimeZoneData;->mTimeZonesByOffsets:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public hasTimeZonesInHrOffset(I)Z
    .locals 2

    .prologue
    .line 242
    add-int/lit8 v0, p1, 0x14

    .line 243
    iget-object v1, p0, Lcom/android/timezonepicker/TimeZoneData;->mHasTimeZonesInHrOffset:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    if-gez v0, :cond_1

    .line 244
    :cond_0
    const/4 v0, 0x0

    .line 246
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/timezonepicker/TimeZoneData;->mHasTimeZonesInHrOffset:[Z

    aget-boolean v0, v1, v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneData;->mTimeZones:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
