.class public Lcom/android/timezonepicker/TimeZonePickerUtils;
.super Ljava/lang/Object;
.source "TimeZonePickerUtils.java"


# static fields
.field private static final mSpannableFactory:Landroid/text/Spannable$Factory;


# instance fields
.field private mDefaultLocale:Ljava/util/Locale;

.field private mOverrideIds:[Ljava/lang/String;

.field private mOverrideLabels:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v0

    sput-object v0, Lcom/android/timezonepicker/TimeZonePickerUtils;->mSpannableFactory:Landroid/text/Spannable$Factory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-direct {p0, p1}, Lcom/android/timezonepicker/TimeZonePickerUtils;->cacheOverrides(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public static appendGmtOffset(Ljava/lang/StringBuilder;I)V
    .locals 6

    .prologue
    .line 122
    const-string v0, "GMT"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    if-gez p1, :cond_2

    .line 125
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 131
    int-to-long v2, v0

    const-wide/32 v4, 0x36ee80

    div-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 133
    const v1, 0xea60

    div-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x3c

    .line 134
    if-eqz v0, :cond_1

    .line 135
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 137
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    :cond_1
    return-void

    .line 127
    :cond_2
    const/16 v0, 0x2b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private buildGmtDisplayName(Ljava/util/TimeZone;JZ)Ljava/lang/CharSequence;
    .locals 8

    .prologue
    const/16 v7, 0x21

    const/4 v1, 0x0

    .line 83
    new-instance v0, Landroid/text/format/Time;

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    iget v0, v0, Landroid/text/format/Time;->isDst:I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/timezonepicker/TimeZonePickerUtils;->getDisplayName(Ljava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v0, "  "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p1, p2, p3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 94
    invoke-static {v2, v0}, Lcom/android/timezonepicker/TimeZonePickerUtils;->appendGmtOffset(Ljava/lang/StringBuilder;I)V

    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 99
    invoke-virtual {p1}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 102
    invoke-static {}, Lcom/android/timezonepicker/TimeZonePickerUtils;->getDstSymbol()C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 107
    :goto_1
    sget-object v5, Lcom/android/timezonepicker/TimeZonePickerUtils;->mSpannableFactory:Landroid/text/Spannable$Factory;

    invoke-virtual {v5, v2}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v2

    .line 108
    if-eqz p4, :cond_0

    .line 109
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const v6, -0x777778

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v2, v5, v3, v4, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 112
    :cond_0
    invoke-virtual {p1}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const v4, -0x404041

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v2, v3, v0, v1, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 118
    :cond_1
    return-object v2

    :cond_2
    move v0, v1

    .line 88
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private cacheOverrides(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 185
    sget v1, Lcom/android/timezonepicker/R$array;->timezone_rename_ids:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/timezonepicker/TimeZonePickerUtils;->mOverrideIds:[Ljava/lang/String;

    .line 186
    sget v1, Lcom/android/timezonepicker/R$array;->timezone_rename_labels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerUtils;->mOverrideLabels:[Ljava/lang/String;

    .line 187
    return-void
.end method

.method private getDisplayName(Ljava/util/TimeZone;Z)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 162
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerUtils;->mOverrideIds:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/timezonepicker/TimeZonePickerUtils;->mOverrideLabels:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 164
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, p2, v5, v0}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    .line 167
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/timezonepicker/TimeZonePickerUtils;->mOverrideIds:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 168
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/timezonepicker/TimeZonePickerUtils;->mOverrideIds:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 169
    iget-object v1, p0, Lcom/android/timezonepicker/TimeZonePickerUtils;->mOverrideLabels:[Ljava/lang/String;

    array-length v1, v1

    if-le v1, v0, :cond_2

    .line 170
    iget-object v1, p0, Lcom/android/timezonepicker/TimeZonePickerUtils;->mOverrideLabels:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0

    .line 172
    :cond_2
    const-string v0, "TimeZonePickerUtils"

    iget-object v1, p0, Lcom/android/timezonepicker/TimeZonePickerUtils;->mOverrideIds:[Ljava/lang/String;

    array-length v1, v1

    iget-object v2, p0, Lcom/android/timezonepicker/TimeZonePickerUtils;->mOverrideLabels:[Ljava/lang/String;

    array-length v2, v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x4a

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "timezone_rename_ids len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " timezone_rename_labels len="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, p2, v5, v0}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 167
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getDstSymbol()C
    .locals 2

    .prologue
    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 145
    const/16 v0, 0x2600

    .line 147
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x2a

    goto :goto_0
.end method


# virtual methods
.method public getGmtDisplayName(Landroid/content/Context;Ljava/lang/String;JZ)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 67
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 68
    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    .line 72
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 73
    iget-object v2, p0, Lcom/android/timezonepicker/TimeZonePickerUtils;->mDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 76
    iput-object v1, p0, Lcom/android/timezonepicker/TimeZonePickerUtils;->mDefaultLocale:Ljava/util/Locale;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/timezonepicker/TimeZonePickerUtils;->cacheOverrides(Landroid/content/Context;)V

    .line 79
    :cond_1
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/android/timezonepicker/TimeZonePickerUtils;->buildGmtDisplayName(Ljava/util/TimeZone;JZ)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method
