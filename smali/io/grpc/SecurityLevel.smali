.class public final enum Lio/grpc/SecurityLevel;
.super Ljava/lang/Enum;
.source "SecurityLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/grpc/SecurityLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/SecurityLevel;

.field public static final enum INTEGRITY:Lio/grpc/SecurityLevel;

.field public static final enum NONE:Lio/grpc/SecurityLevel;

.field public static final enum PRIVACY_AND_INTEGRITY:Lio/grpc/SecurityLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lio/grpc/SecurityLevel;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lio/grpc/SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/SecurityLevel;->NONE:Lio/grpc/SecurityLevel;

    .line 47
    new-instance v0, Lio/grpc/SecurityLevel;

    const-string v1, "INTEGRITY"

    invoke-direct {v0, v1, v3}, Lio/grpc/SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/SecurityLevel;->INTEGRITY:Lio/grpc/SecurityLevel;

    .line 53
    new-instance v0, Lio/grpc/SecurityLevel;

    const-string v1, "PRIVACY_AND_INTEGRITY"

    invoke-direct {v0, v1, v4}, Lio/grpc/SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/SecurityLevel;->PRIVACY_AND_INTEGRITY:Lio/grpc/SecurityLevel;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Lio/grpc/SecurityLevel;

    sget-object v1, Lio/grpc/SecurityLevel;->NONE:Lio/grpc/SecurityLevel;

    aput-object v1, v0, v2

    sget-object v1, Lio/grpc/SecurityLevel;->INTEGRITY:Lio/grpc/SecurityLevel;

    aput-object v1, v0, v3

    sget-object v1, Lio/grpc/SecurityLevel;->PRIVACY_AND_INTEGRITY:Lio/grpc/SecurityLevel;

    aput-object v1, v0, v4

    sput-object v0, Lio/grpc/SecurityLevel;->$VALUES:[Lio/grpc/SecurityLevel;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lio/grpc/SecurityLevel;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lio/grpc/SecurityLevel;->$VALUES:[Lio/grpc/SecurityLevel;

    invoke-virtual {v0}, [Lio/grpc/SecurityLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/SecurityLevel;

    return-object v0
.end method
