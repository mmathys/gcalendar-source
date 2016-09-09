.class public Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;
.super Ljava/lang/Object;
.source "Attachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/v2/client/service/api/events/Attachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private fileUrl:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/calendar/v2/client/service/api/events/Attachment$1;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;->fileUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;->iconUrl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/calendar/v2/client/service/api/events/Attachment;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/google/calendar/v2/client/service/api/events/Attachment;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/calendar/v2/client/service/api/events/Attachment;-><init>(Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;Lcom/google/calendar/v2/client/service/api/events/Attachment$1;)V

    return-object v0
.end method

.method public setFileUrl(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;->fileUrl:Ljava/lang/String;

    .line 79
    return-object p0
.end method

.method public setIconUrl(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;->iconUrl:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/api/events/Attachment$Builder;->title:Ljava/lang/String;

    .line 84
    return-object p0
.end method
