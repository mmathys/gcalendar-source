.class public Lcom/google/android/calendar/api/EventClientBase$Result;
.super Ljava/lang/Object;
.source "EventClientBase.java"

# interfaces
.implements Lcom/google/android/calendar/api/EventClient$CreateResult;
.implements Lcom/google/android/calendar/api/EventClient$GenericResult;
.implements Lcom/google/android/calendar/api/EventClient$ListResult;
.implements Lcom/google/android/calendar/api/EventClient$ReadResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/api/EventClientBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Result"
.end annotation


# instance fields
.field private final mCount:I

.field private final mDescriptor:Lcom/google/android/calendar/api/EventDescriptor;

.field private final mEvent:Lcom/google/android/calendar/api/Event;

.field private final mEvents:[Lcom/google/android/calendar/api/Event;

.field private final mStatus:Lcom/google/android/gms/common/api/Status;


# direct methods
.method private constructor <init>(IILcom/google/android/calendar/api/EventDescriptor;Lcom/google/android/calendar/api/Event;[Lcom/google/android/calendar/api/Event;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p2, p0, Lcom/google/android/calendar/api/EventClientBase$Result;->mCount:I

    .line 40
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/calendar/api/EventClientBase$Result;->mStatus:Lcom/google/android/gms/common/api/Status;

    .line 41
    iput-object p3, p0, Lcom/google/android/calendar/api/EventClientBase$Result;->mDescriptor:Lcom/google/android/calendar/api/EventDescriptor;

    .line 42
    iput-object p4, p0, Lcom/google/android/calendar/api/EventClientBase$Result;->mEvent:Lcom/google/android/calendar/api/Event;

    .line 43
    iput-object p5, p0, Lcom/google/android/calendar/api/EventClientBase$Result;->mEvents:[Lcom/google/android/calendar/api/Event;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(IILcom/google/android/calendar/api/EventDescriptor;Lcom/google/android/calendar/api/Event;[Lcom/google/android/calendar/api/Event;Lcom/google/android/calendar/api/EventClientBase$1;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p5}, Lcom/google/android/calendar/api/EventClientBase$Result;-><init>(IILcom/google/android/calendar/api/EventDescriptor;Lcom/google/android/calendar/api/Event;[Lcom/google/android/calendar/api/Event;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/calendar/api/EventClientBase$Result;->mCount:I

    .line 48
    iput-object v1, p0, Lcom/google/android/calendar/api/EventClientBase$Result;->mDescriptor:Lcom/google/android/calendar/api/EventDescriptor;

    .line 49
    iput-object v1, p0, Lcom/google/android/calendar/api/EventClientBase$Result;->mEvent:Lcom/google/android/calendar/api/Event;

    .line 50
    iput-object v1, p0, Lcom/google/android/calendar/api/EventClientBase$Result;->mEvents:[Lcom/google/android/calendar/api/Event;

    .line 51
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-static {p1}, Lcom/google/common/base/Throwables;->getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/calendar/api/EventClientBase$Result;->mStatus:Lcom/google/android/gms/common/api/Status;

    .line 52
    return-void
.end method


# virtual methods
.method public getEvent()Lcom/google/android/calendar/api/Event;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/calendar/api/EventClientBase$Result;->mEvent:Lcom/google/android/calendar/api/Event;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/calendar/api/EventClientBase$Result;->mStatus:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
