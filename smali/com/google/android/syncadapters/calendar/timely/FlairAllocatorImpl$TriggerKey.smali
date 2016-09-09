.class Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$TriggerKey;
.super Ljava/lang/Object;
.source "FlairAllocatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TriggerKey"
.end annotation


# instance fields
.field private final hashCode:I

.field private final wordsAsString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$TriggerKey;->wordsAsString:Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$TriggerKey;->wordsAsString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$TriggerKey;->hashCode:I

    .line 202
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$TriggerKey;->wordsAsString:Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$TriggerKey;->wordsAsString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$TriggerKey;->hashCode:I

    .line 197
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 206
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$TriggerKey;

    if-nez v0, :cond_1

    .line 207
    :cond_0
    const/4 v0, 0x0

    .line 209
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$TriggerKey;->wordsAsString:Ljava/lang/String;

    check-cast p1, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$TriggerKey;

    iget-object v1, p1, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$TriggerKey;->wordsAsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$TriggerKey;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$TriggerKey;->wordsAsString:Ljava/lang/String;

    return-object v0
.end method
