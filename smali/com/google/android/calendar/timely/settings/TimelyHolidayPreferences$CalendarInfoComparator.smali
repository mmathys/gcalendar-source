.class Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$CalendarInfoComparator;
.super Ljava/lang/Object;
.source "TimelyHolidayPreferences.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CalendarInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final mCollator:Ljava/text/Collator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 672
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$CalendarInfoComparator;->mCollator:Ljava/text/Collator;

    .line 675
    sget-object v0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$CalendarInfoComparator;->mCollator:Ljava/text/Collator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 676
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$1;)V
    .locals 0

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$CalendarInfoComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;)I
    .locals 3

    .prologue
    .line 680
    sget-object v0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$CalendarInfoComparator;->mCollator:Ljava/text/Collator;

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 671
    check-cast p1, Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;

    check-cast p2, Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$CalendarInfoComparator;->compare(Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;)I

    move-result v0

    return v0
.end method
