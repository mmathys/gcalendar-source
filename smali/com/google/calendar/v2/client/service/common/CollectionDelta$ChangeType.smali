.class public final enum Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;
.super Ljava/lang/Enum;
.source "CollectionDelta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/v2/client/service/common/CollectionDelta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChangeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

.field public static final enum ADD:Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

.field public static final enum REMOVE:Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

.field public static final enum UPDATE:Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v2}, Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;->ADD:Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

    .line 19
    new-instance v0, Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v3}, Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;->UPDATE:Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

    .line 21
    new-instance v0, Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

    const-string v1, "REMOVE"

    invoke-direct {v0, v1, v4}, Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;->REMOVE:Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

    sget-object v1, Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;->ADD:Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;->UPDATE:Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;->REMOVE:Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;->$VALUES:[Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

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

.method public static values()[Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;->$VALUES:[Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

    invoke-virtual {v0}, [Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

    return-object v0
.end method
