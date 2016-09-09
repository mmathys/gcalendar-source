.class final Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;
.super Ljava/lang/Object;
.source "SuggestionBucket.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final displayLabel:Ljava/lang/String;

.field public final isBestBucket:Z

.field public final suggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineSuggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineSuggestion;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-nez p1, :cond_0

    .line 43
    sget-object v0, Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;->TAG:Ljava/lang/String;

    const-string v1, "Display label should not be null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;->displayLabel:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;->suggestions:Ljava/util/List;

    .line 48
    iput-boolean p3, p0, Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;->isBestBucket:Z

    .line 49
    return-void
.end method
