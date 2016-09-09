.class public Lcom/google/calendar/v2/client/service/api/time/UtcTimeZoneImpl;
.super Ljava/lang/Object;
.source "UtcTimeZoneImpl.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/time/TimeZone;


# static fields
.field public static final INSTANCE:Lcom/google/calendar/v2/client/service/api/time/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/google/calendar/v2/client/service/api/time/UtcTimeZoneImpl;

    invoke-direct {v0}, Lcom/google/calendar/v2/client/service/api/time/UtcTimeZoneImpl;-><init>()V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/time/UtcTimeZoneImpl;->INSTANCE:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "Etc/UTC"

    return-object v0
.end method

.method public getOffset(J)I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "UtcTimeZoneImpl"

    return-object v0
.end method
