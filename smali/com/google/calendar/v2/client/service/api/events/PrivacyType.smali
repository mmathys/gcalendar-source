.class public final enum Lcom/google/calendar/v2/client/service/api/events/PrivacyType;
.super Ljava/lang/Enum;
.source "PrivacyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/calendar/v2/client/service/api/events/PrivacyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

.field public static final enum BUSY:Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

.field public static final enum DEFAULT:Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

.field public static final enum SECRET:Lcom/google/calendar/v2/client/service/api/events/PrivacyType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;->DEFAULT:Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    .line 31
    new-instance v0, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    const-string v1, "BUSY"

    invoke-direct {v0, v1, v3}, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;->BUSY:Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    .line 39
    new-instance v0, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    const-string v1, "SECRET"

    invoke-direct {v0, v1, v4}, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;->SECRET:Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;->DEFAULT:Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;->BUSY:Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;->SECRET:Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;->$VALUES:[Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/events/PrivacyType;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    return-object v0
.end method

.method public static values()[Lcom/google/calendar/v2/client/service/api/events/PrivacyType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;->$VALUES:[Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    invoke-virtual {v0}, [Lcom/google/calendar/v2/client/service/api/events/PrivacyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    return-object v0
.end method
