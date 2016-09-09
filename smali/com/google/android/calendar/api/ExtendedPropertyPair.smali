.class public Lcom/google/android/calendar/api/ExtendedPropertyPair;
.super Ljava/lang/Object;
.source "ExtendedPropertyPair.java"


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final mValue:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/calendar/api/ExtendedPropertyPair;->mKey:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/google/android/calendar/api/ExtendedPropertyPair;->mValue:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static createForAttachments(Ljava/util/List;)Lcom/google/android/calendar/api/ExtendedPropertyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/attachments/Attachment;",
            ">;)",
            "Lcom/google/android/calendar/api/ExtendedPropertyPair;"
        }
    .end annotation

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;-><init>()V

    .line 17
    invoke-static {p0}, Lcom/google/android/calendar/api/attachments/AttachmentStoreUtils;->fromApiAttachments(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->setAttachments(Ljava/util/List;)V

    .line 18
    new-instance v1, Lcom/google/android/calendar/api/ExtendedPropertyPair;

    const-string v2, "attachmentsExtra"

    .line 19
    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->attachmentsAsString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/calendar/api/ExtendedPropertyPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-object v1
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/calendar/api/ExtendedPropertyPair;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/calendar/api/ExtendedPropertyPair;->mValue:Ljava/lang/String;

    return-object v0
.end method
