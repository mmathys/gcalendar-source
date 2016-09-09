.class public Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;
.super Ljava/lang/Object;
.source "FlairAllocatorFactory.java"


# static fields
.field static final FLAIR_BASE_URL:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static sAllocator:Lcom/google/android/syncadapters/calendar/timely/FlairAllocator;

.field private static sApplicationContext:Landroid/content/Context;

.field static sDensityLabelDirectory:Ljava/lang/String;

.field private static sGrooveAllocator:Lcom/google/android/syncadapters/calendar/timely/GrooveFlairAllocator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-class v0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://ssl.gstatic.com/tmly/f8944938hffheth4ew890ht4i8/"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "flairs/"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->FLAIR_BASE_URL:Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/GrooveFlairAllocatorImpl;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveFlairAllocatorImpl;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->sGrooveAllocator:Lcom/google/android/syncadapters/calendar/timely/GrooveFlairAllocator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized getAllocator()Lcom/google/android/syncadapters/calendar/timely/FlairAllocator;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 199
    const-class v1, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->sApplicationContext:Landroid/content/Context;

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->sAllocator:Lcom/google/android/syncadapters/calendar/timely/FlairAllocator;

    if-nez v2, :cond_0

    .line 200
    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->TAG:Ljava/lang/String;

    const-string v3, "Flair Allocator requested before context"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :goto_0
    monitor-exit v1

    return-object v0

    .line 203
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->sAllocator:Lcom/google/android/syncadapters/calendar/timely/FlairAllocator;

    if-nez v0, :cond_3

    .line 204
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 206
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->readFlairDataForLocale(Landroid/content/Context;Ljava/lang/String;)[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;

    move-result-object v0

    .line 207
    if-nez v0, :cond_1

    .line 209
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->sApplicationContext:Landroid/content/Context;

    .line 210
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 209
    invoke-static {v0, v3}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->readFlairDataForLocale(Landroid/content/Context;Ljava/lang/String;)[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;

    move-result-object v0

    .line 212
    :cond_1
    if-eqz v0, :cond_2

    array-length v3, v0

    if-nez v3, :cond_4

    .line 213
    :cond_2
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/NoOpFlairAllocator;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/timely/NoOpFlairAllocator;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->sAllocator:Lcom/google/android/syncadapters/calendar/timely/FlairAllocator;

    .line 221
    :goto_1
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->sApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->getDensityLabelDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->sDensityLabelDirectory:Ljava/lang/String;

    .line 224
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->sApplicationContext:Landroid/content/Context;

    .line 226
    :cond_3
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->sAllocator:Lcom/google/android/syncadapters/calendar/timely/FlairAllocator;

    goto :goto_0

    .line 215
    :cond_4
    new-instance v3, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl;

    .line 216
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 217
    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->makeWordSplitter(Ljava/util/Locale;)Lcom/google/common/base/Function;

    move-result-object v2

    invoke-direct {v3, v0, v2}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl;-><init>(Ljava/util/List;Lcom/google/common/base/Function;)V

    sput-object v3, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->sAllocator:Lcom/google/android/syncadapters/calendar/timely/FlairAllocator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getAssistFlairUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 128
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->getAllocator()Lcom/google/android/syncadapters/calendar/timely/FlairAllocator;

    move-result-object v0

    .line 129
    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->FLAIR_BASE_URL:Ljava/lang/String;

    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->sDensityLabelDirectory:Ljava/lang/String;

    const-string v2, "/img_"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".png"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getDensityLabelDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v2, 0xa0

    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 180
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 181
    const/16 v1, 0x1e0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 183
    if-gt v0, v2, :cond_0

    .line 184
    const-string v0, "mdpi"

    .line 194
    :goto_0
    return-object v0

    .line 185
    :cond_0
    const/16 v1, 0xf0

    if-gt v0, v1, :cond_1

    .line 186
    const-string v0, "hdpi"

    goto :goto_0

    .line 187
    :cond_1
    const/16 v1, 0x140

    if-gt v0, v1, :cond_2

    .line 188
    const-string v0, "xhdpi"

    goto :goto_0

    .line 189
    :cond_2
    const/16 v1, 0x280

    if-gt v0, v1, :cond_3

    .line 190
    const-string v0, "xxhdpi"

    goto :goto_0

    .line 193
    :cond_3
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown density for flairs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 194
    const-string v0, "hdpi"

    goto :goto_0
.end method

.method public static getFlairName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->getAllocator()Lcom/google/android/syncadapters/calendar/timely/FlairAllocator;

    move-result-object v0

    .line 119
    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 122
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0, p0}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocator;->allocateFlair(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFlairUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->getFlairName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->getFlairUrlStringFromKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFlairUrlStringFromKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 62
    if-nez p0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-object v0

    .line 66
    :cond_1
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->getAllocator()Lcom/google/android/syncadapters/calendar/timely/FlairAllocator;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_0

    .line 70
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->FLAIR_BASE_URL:Ljava/lang/String;

    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->sDensityLabelDirectory:Ljava/lang/String;

    const-string v2, "/img_"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getGrooveFlairUrlString(I)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->getAllocator()Lcom/google/android/syncadapters/calendar/timely/FlairAllocator;

    move-result-object v1

    .line 92
    if-nez v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-object v0

    .line 95
    :cond_1
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->sGrooveAllocator:Lcom/google/android/syncadapters/calendar/timely/GrooveFlairAllocator;

    invoke-interface {v1, p0}, Lcom/google/android/syncadapters/calendar/timely/GrooveFlairAllocator;->allocateFlair(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_0

    .line 99
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->FLAIR_BASE_URL:Ljava/lang/String;

    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->sDensityLabelDirectory:Ljava/lang/String;

    const-string v3, "/img_"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getGrooveTabletCategoryIllustrationUrlString(I)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->getAllocator()Lcom/google/android/syncadapters/calendar/timely/FlairAllocator;

    move-result-object v1

    .line 106
    if-nez v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-object v0

    .line 109
    :cond_1
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->sGrooveAllocator:Lcom/google/android/syncadapters/calendar/timely/GrooveFlairAllocator;

    invoke-interface {v1, p0}, Lcom/google/android/syncadapters/calendar/timely/GrooveFlairAllocator;->allocateCategoryIllustration(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_0

    .line 113
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->FLAIR_BASE_URL:Ljava/lang/String;

    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->sDensityLabelDirectory:Ljava/lang/String;

    const-string v3, ".jpg"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static hasContext()Z
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->sApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFlairUrl(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 74
    if-eqz p0, :cond_0

    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->FLAIR_BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makeWordSplitter(Ljava/util/Locale;)Lcom/google/common/base/Function;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    invoke-static {p0}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    .line 231
    new-instance v1, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory$1;-><init>(Ljava/util/Locale;Ljava/text/BreakIterator;)V

    return-object v1
.end method

.method private static readFlairDataForLocale(Landroid/content/Context;Ljava/lang/String;)[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 159
    const-string v1, "flairs/flairdata_%s.pb"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 161
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 162
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/gms/common/util/IOUtils;->readInputStreamFully(Ljava/io/InputStream;Z)[B

    move-result-object v1

    .line 165
    invoke-static {v1}, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;->parseFrom([B)Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;

    move-result-object v1

    .line 166
    if-nez v1, :cond_0

    .line 168
    :goto_0
    return-object v0

    .line 166
    :cond_0
    iget-object v0, v1, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;->flair:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static declared-synchronized setContext(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 146
    const-class v1, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->sAllocator:Lcom/google/android/syncadapters/calendar/timely/FlairAllocator;

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->TAG:Ljava/lang/String;

    const-string v2, "Allocator reset by .setContext"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 149
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->sApplicationContext:Landroid/content/Context;

    .line 151
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->sAllocator:Lcom/google/android/syncadapters/calendar/timely/FlairAllocator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit v1

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
