.class public final enum Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;
.super Ljava/lang/Enum;
.source "CalendarType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

.field public static final enum BIRTHDAY:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

.field public static final enum BLACKLISTED_LEGACY:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

.field public static final enum GROUP:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

.field public static final enum HOLIDAY:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

.field public static final enum INDIVIDUAL:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

.field public static final enum PLATFORM:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

.field public static final enum ROOM:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

.field public static final enum UNKNOWN:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    const-string v1, "INDIVIDUAL"

    invoke-direct {v0, v1, v3}, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->INDIVIDUAL:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    .line 13
    new-instance v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    const-string v1, "ROOM"

    invoke-direct {v0, v1, v4}, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->ROOM:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    .line 15
    new-instance v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    const-string v1, "BIRTHDAY"

    invoke-direct {v0, v1, v5}, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->BIRTHDAY:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    .line 17
    new-instance v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    const-string v1, "HOLIDAY"

    invoke-direct {v0, v1, v6}, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->HOLIDAY:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    .line 19
    new-instance v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    const-string v1, "GROUP"

    invoke-direct {v0, v1, v7}, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->GROUP:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    .line 22
    new-instance v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    const-string v1, "BLACKLISTED_LEGACY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->BLACKLISTED_LEGACY:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    .line 26
    new-instance v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    const-string v1, "PLATFORM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->PLATFORM:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    .line 28
    new-instance v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->UNKNOWN:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    .line 9
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    sget-object v1, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->INDIVIDUAL:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->ROOM:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->BIRTHDAY:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->HOLIDAY:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->GROUP:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->BLACKLISTED_LEGACY:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->PLATFORM:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->UNKNOWN:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->$VALUES:[Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    return-object v0
.end method

.method public static values()[Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->$VALUES:[Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    invoke-virtual {v0}, [Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    return-object v0
.end method
