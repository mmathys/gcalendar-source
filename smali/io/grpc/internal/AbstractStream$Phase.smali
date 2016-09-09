.class public final enum Lio/grpc/internal/AbstractStream$Phase;
.super Ljava/lang/Enum;
.source "AbstractStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/AbstractStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Phase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/grpc/internal/AbstractStream$Phase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/internal/AbstractStream$Phase;

.field public static final enum HEADERS:Lio/grpc/internal/AbstractStream$Phase;

.field public static final enum MESSAGE:Lio/grpc/internal/AbstractStream$Phase;

.field public static final enum STATUS:Lio/grpc/internal/AbstractStream$Phase;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lio/grpc/internal/AbstractStream$Phase;

    const-string v1, "HEADERS"

    invoke-direct {v0, v1, v2}, Lio/grpc/internal/AbstractStream$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/internal/AbstractStream$Phase;->HEADERS:Lio/grpc/internal/AbstractStream$Phase;

    new-instance v0, Lio/grpc/internal/AbstractStream$Phase;

    const-string v1, "MESSAGE"

    invoke-direct {v0, v1, v3}, Lio/grpc/internal/AbstractStream$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/internal/AbstractStream$Phase;->MESSAGE:Lio/grpc/internal/AbstractStream$Phase;

    new-instance v0, Lio/grpc/internal/AbstractStream$Phase;

    const-string v1, "STATUS"

    invoke-direct {v0, v1, v4}, Lio/grpc/internal/AbstractStream$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/internal/AbstractStream$Phase;->STATUS:Lio/grpc/internal/AbstractStream$Phase;

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Lio/grpc/internal/AbstractStream$Phase;

    sget-object v1, Lio/grpc/internal/AbstractStream$Phase;->HEADERS:Lio/grpc/internal/AbstractStream$Phase;

    aput-object v1, v0, v2

    sget-object v1, Lio/grpc/internal/AbstractStream$Phase;->MESSAGE:Lio/grpc/internal/AbstractStream$Phase;

    aput-object v1, v0, v3

    sget-object v1, Lio/grpc/internal/AbstractStream$Phase;->STATUS:Lio/grpc/internal/AbstractStream$Phase;

    aput-object v1, v0, v4

    sput-object v0, Lio/grpc/internal/AbstractStream$Phase;->$VALUES:[Lio/grpc/internal/AbstractStream$Phase;

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
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lio/grpc/internal/AbstractStream$Phase;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lio/grpc/internal/AbstractStream$Phase;->$VALUES:[Lio/grpc/internal/AbstractStream$Phase;

    invoke-virtual {v0}, [Lio/grpc/internal/AbstractStream$Phase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/internal/AbstractStream$Phase;

    return-object v0
.end method
