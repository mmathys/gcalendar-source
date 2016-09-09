.class public final enum Lcom/google/calendar/v2/client/service/api/events/AttendeeType;
.super Ljava/lang/Enum;
.source "AttendeeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/calendar/v2/client/service/api/events/AttendeeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

.field public static final enum GROUP:Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

.field public static final enum INDIVIDUAL:Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

.field public static final enum ROOM:Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

.field public static final enum UNKNOWN:Lcom/google/calendar/v2/client/service/api/events/AttendeeType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    const-string v1, "INDIVIDUAL"

    invoke-direct {v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;->INDIVIDUAL:Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    .line 15
    new-instance v0, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    const-string v1, "ROOM"

    invoke-direct {v0, v1, v3}, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;->ROOM:Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    .line 17
    new-instance v0, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    const-string v1, "GROUP"

    invoke-direct {v0, v1, v4}, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;->GROUP:Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    .line 19
    new-instance v0, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;->UNKNOWN:Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;->INDIVIDUAL:Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;->ROOM:Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;->GROUP:Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;->UNKNOWN:Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;->$VALUES:[Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/events/AttendeeType;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    return-object v0
.end method

.method public static values()[Lcom/google/calendar/v2/client/service/api/events/AttendeeType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;->$VALUES:[Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    invoke-virtual {v0}, [Lcom/google/calendar/v2/client/service/api/events/AttendeeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    return-object v0
.end method
