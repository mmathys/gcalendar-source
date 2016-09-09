.class public Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Builder;
.super Ljava/lang/Object;
.source "TimeZoneImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private standardOffset:I

.field private transitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Builder;->transitions:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Builder;->id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Builder;)I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Builder;->standardOffset:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Builder;)Ljava/util/List;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Builder;->transitions:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl;-><init>(Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Builder;Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$1;)V

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Builder;
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Builder;->id:Ljava/lang/String;

    .line 119
    return-object p0
.end method
