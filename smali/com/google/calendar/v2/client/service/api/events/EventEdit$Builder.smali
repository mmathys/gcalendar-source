.class public Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;
.super Ljava/lang/Object;
.source "EventEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/v2/client/service/api/events/EventEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final event:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

.field private initialEvent:Lcom/google/calendar/v2/client/service/api/events/Event;

.field private originalEvent:Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;


# direct methods
.method private constructor <init>(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;->event:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    .line 198
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;Lcom/google/calendar/v2/client/service/api/events/EventEdit$1;)V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;-><init>(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;)Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;->originalEvent:Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;)Lcom/google/calendar/v2/client/service/api/events/Event;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;->initialEvent:Lcom/google/calendar/v2/client/service/api/events/Event;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;)Lcom/google/calendar/v2/client/service/api/events/MutableEvent;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;->event:Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/calendar/v2/client/service/api/events/EventEdit;
    .locals 2

    .prologue
    .line 230
    new-instance v0, Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;-><init>(Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;Lcom/google/calendar/v2/client/service/api/events/EventEdit$1;)V

    return-object v0
.end method

.method public setInitialEvent(Lcom/google/calendar/v2/client/service/api/events/Event;)Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;->initialEvent:Lcom/google/calendar/v2/client/service/api/events/Event;

    .line 226
    return-object p0
.end method

.method public setOriginalEvent(Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;)Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/api/events/EventEdit$Builder;->originalEvent:Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;

    .line 212
    return-object p0
.end method
