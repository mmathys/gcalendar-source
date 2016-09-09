.class public final enum Lcom/google/android/calendar/net/ResponseStatus;
.super Ljava/lang/Enum;
.source "ResponseStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/calendar/net/ResponseStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/calendar/net/ResponseStatus;

.field public static final enum REQUEST_TIMEOUT:Lcom/google/android/calendar/net/ResponseStatus;

.field public static final enum SERVER_ERROR:Lcom/google/android/calendar/net/ResponseStatus;

.field public static final enum SUCCESS:Lcom/google/android/calendar/net/ResponseStatus;

.field public static final enum UNKNOWN_ERROR:Lcom/google/android/calendar/net/ResponseStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/google/android/calendar/net/ResponseStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/google/android/calendar/net/ResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/calendar/net/ResponseStatus;->SUCCESS:Lcom/google/android/calendar/net/ResponseStatus;

    .line 12
    new-instance v0, Lcom/google/android/calendar/net/ResponseStatus;

    const-string v1, "UNKNOWN_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/google/android/calendar/net/ResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/calendar/net/ResponseStatus;->UNKNOWN_ERROR:Lcom/google/android/calendar/net/ResponseStatus;

    .line 14
    new-instance v0, Lcom/google/android/calendar/net/ResponseStatus;

    const-string v1, "REQUEST_TIMEOUT"

    invoke-direct {v0, v1, v4}, Lcom/google/android/calendar/net/ResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/calendar/net/ResponseStatus;->REQUEST_TIMEOUT:Lcom/google/android/calendar/net/ResponseStatus;

    .line 16
    new-instance v0, Lcom/google/android/calendar/net/ResponseStatus;

    const-string v1, "SERVER_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/google/android/calendar/net/ResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/calendar/net/ResponseStatus;->SERVER_ERROR:Lcom/google/android/calendar/net/ResponseStatus;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/calendar/net/ResponseStatus;

    sget-object v1, Lcom/google/android/calendar/net/ResponseStatus;->SUCCESS:Lcom/google/android/calendar/net/ResponseStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/calendar/net/ResponseStatus;->UNKNOWN_ERROR:Lcom/google/android/calendar/net/ResponseStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/calendar/net/ResponseStatus;->REQUEST_TIMEOUT:Lcom/google/android/calendar/net/ResponseStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/calendar/net/ResponseStatus;->SERVER_ERROR:Lcom/google/android/calendar/net/ResponseStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/calendar/net/ResponseStatus;->$VALUES:[Lcom/google/android/calendar/net/ResponseStatus;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/calendar/net/ResponseStatus;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/google/android/calendar/net/ResponseStatus;->$VALUES:[Lcom/google/android/calendar/net/ResponseStatus;

    invoke-virtual {v0}, [Lcom/google/android/calendar/net/ResponseStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/calendar/net/ResponseStatus;

    return-object v0
.end method
