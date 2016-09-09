.class public final enum Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;
.super Ljava/lang/Enum;
.source "HolidayType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;

.field public static final enum COUNTRY_HOLIDAY:Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;

.field public static final enum RELIGION_HOLIDAY:Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;

    const-string v1, "COUNTRY_HOLIDAY"

    invoke-direct {v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;->COUNTRY_HOLIDAY:Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;

    .line 10
    new-instance v0, Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;

    const-string v1, "RELIGION_HOLIDAY"

    invoke-direct {v0, v1, v3}, Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;->RELIGION_HOLIDAY:Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;

    sget-object v1, Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;->COUNTRY_HOLIDAY:Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;->RELIGION_HOLIDAY:Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;->$VALUES:[Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;

    return-object v0
.end method

.method public static values()[Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;->$VALUES:[Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;

    invoke-virtual {v0}, [Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;

    return-object v0
.end method
