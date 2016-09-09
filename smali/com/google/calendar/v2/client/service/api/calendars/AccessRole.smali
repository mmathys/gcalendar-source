.class public final enum Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;
.super Ljava/lang/Enum;
.source "AccessRole.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

.field public static final enum FREEBUSY_READER:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

.field public static final enum NONE:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

.field public static final enum OWNER:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

.field public static final enum READER:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

.field public static final enum WRITER:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->NONE:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    .line 11
    new-instance v0, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    const-string v1, "FREEBUSY_READER"

    invoke-direct {v0, v1, v3}, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->FREEBUSY_READER:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    .line 12
    new-instance v0, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    const-string v1, "READER"

    invoke-direct {v0, v1, v4}, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->READER:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    .line 13
    new-instance v0, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    const-string v1, "WRITER"

    invoke-direct {v0, v1, v5}, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->WRITER:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    .line 14
    new-instance v0, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    const-string v1, "OWNER"

    invoke-direct {v0, v1, v6}, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->OWNER:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    sget-object v1, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->NONE:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->FREEBUSY_READER:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->READER:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->WRITER:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->OWNER:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->$VALUES:[Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    return-object v0
.end method

.method public static values()[Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->$VALUES:[Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    invoke-virtual {v0}, [Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    return-object v0
.end method
