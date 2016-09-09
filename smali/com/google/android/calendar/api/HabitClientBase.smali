.class abstract Lcom/google/android/calendar/api/HabitClientBase;
.super Ljava/lang/Object;
.source "HabitClientBase.java"

# interfaces
.implements Lcom/google/android/calendar/api/HabitClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/api/HabitClientBase$Result;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mApi:Lcom/google/android/calendar/api/CrudApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/calendar/api/CrudApi",
            "<",
            "Lcom/google/android/calendar/api/Habit;",
            "Lcom/google/android/calendar/api/HabitModifications;",
            "Lcom/google/android/calendar/api/HabitDescriptor;",
            "Lcom/google/android/calendar/api/HabitFilterOptions;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/android/calendar/api/HabitClientBase;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/api/HabitClientBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/calendar/api/CrudApi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/calendar/api/CrudApi",
            "<",
            "Lcom/google/android/calendar/api/Habit;",
            "Lcom/google/android/calendar/api/HabitModifications;",
            "Lcom/google/android/calendar/api/HabitDescriptor;",
            "Lcom/google/android/calendar/api/HabitFilterOptions;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/CrudApi;

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitClientBase;->mApi:Lcom/google/android/calendar/api/CrudApi;

    .line 82
    return-void
.end method


# virtual methods
.method protected synchronousCount(Lcom/google/android/calendar/api/HabitFilterOptions;)Lcom/google/android/calendar/api/HabitClient$GenericResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 120
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitClientBase;->mApi:Lcom/google/android/calendar/api/CrudApi;

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/CrudApi;->count(Ljava/lang/Object;)I

    move-result v2

    .line 121
    new-instance v0, Lcom/google/android/calendar/api/HabitClientBase$Result;

    if-ltz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/calendar/api/HabitClientBase$Result;-><init>(IILcom/google/android/calendar/api/HabitDescriptor;Lcom/google/android/calendar/api/Habit;[Lcom/google/android/calendar/api/Habit;Lcom/google/android/calendar/api/HabitClientBase$1;)V

    return-object v0

    :cond_0
    const/16 v1, 0xd

    goto :goto_0
.end method

.method protected synchronousCreate(Lcom/google/android/calendar/api/HabitModifications;)Lcom/google/android/calendar/api/HabitClient$CreateResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 85
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitClientBase;->mApi:Lcom/google/android/calendar/api/CrudApi;

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/CrudApi;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/calendar/api/HabitDescriptor;

    .line 86
    new-instance v0, Lcom/google/android/calendar/api/HabitClientBase$Result;

    if-eqz v3, :cond_1

    move v1, v2

    :goto_0
    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/calendar/api/HabitClientBase$Result;-><init>(IILcom/google/android/calendar/api/HabitDescriptor;Lcom/google/android/calendar/api/Habit;[Lcom/google/android/calendar/api/Habit;Lcom/google/android/calendar/api/HabitClientBase$1;)V

    return-object v0

    :cond_1
    const/16 v1, 0xd

    goto :goto_0
.end method

.method protected synchronousList(Lcom/google/android/calendar/api/HabitFilterOptions;)Lcom/google/android/calendar/api/HabitClient$ListResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 113
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitClientBase;->mApi:Lcom/google/android/calendar/api/CrudApi;

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/CrudApi;->list(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/calendar/api/Habit;

    .line 114
    if-eqz v5, :cond_0

    const/4 v0, 0x1

    move v2, v0

    .line 115
    :goto_0
    new-instance v0, Lcom/google/android/calendar/api/HabitClientBase$Result;

    if-eqz v2, :cond_1

    move v1, v4

    :goto_1
    if-eqz v2, :cond_2

    array-length v2, v5

    :goto_2
    move-object v4, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/calendar/api/HabitClientBase$Result;-><init>(IILcom/google/android/calendar/api/HabitDescriptor;Lcom/google/android/calendar/api/Habit;[Lcom/google/android/calendar/api/Habit;Lcom/google/android/calendar/api/HabitClientBase$1;)V

    return-object v0

    :cond_0
    move v2, v4

    .line 114
    goto :goto_0

    .line 115
    :cond_1
    const/16 v1, 0xd

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2
.end method

.method protected synchronousRead(Lcom/google/android/calendar/api/HabitDescriptor;)Lcom/google/android/calendar/api/HabitClient$ReadResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 91
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitClientBase;->mApi:Lcom/google/android/calendar/api/CrudApi;

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/CrudApi;->read(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/calendar/api/Habit;

    .line 92
    new-instance v0, Lcom/google/android/calendar/api/HabitClientBase$Result;

    if-eqz v4, :cond_1

    move v1, v2

    :goto_0
    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/calendar/api/HabitClientBase$Result;-><init>(IILcom/google/android/calendar/api/HabitDescriptor;Lcom/google/android/calendar/api/Habit;[Lcom/google/android/calendar/api/Habit;Lcom/google/android/calendar/api/HabitClientBase$1;)V

    return-object v0

    :cond_1
    const/16 v1, 0xd

    goto :goto_0
.end method

.method protected synchronousUpdate(Lcom/google/android/calendar/api/HabitModifications;)Lcom/google/android/calendar/api/HabitClient$GenericResult;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 97
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getOriginal()Lcom/google/android/calendar/api/Habit;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/google/android/calendar/api/HabitClientBase$Result;

    const/16 v1, 0xd

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/calendar/api/HabitClientBase$Result;-><init>(IILcom/google/android/calendar/api/HabitDescriptor;Lcom/google/android/calendar/api/Habit;[Lcom/google/android/calendar/api/Habit;Lcom/google/android/calendar/api/HabitClientBase$1;)V

    .line 102
    :goto_0
    return-object v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitClientBase;->mApi:Lcom/google/android/calendar/api/CrudApi;

    invoke-interface {v0, p1, v3}, Lcom/google/android/calendar/api/CrudApi;->update(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 102
    new-instance v4, Lcom/google/android/calendar/api/HabitClientBase$Result;

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    :goto_1
    move v5, v2

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    invoke-direct/range {v4 .. v10}, Lcom/google/android/calendar/api/HabitClientBase$Result;-><init>(IILcom/google/android/calendar/api/HabitDescriptor;Lcom/google/android/calendar/api/Habit;[Lcom/google/android/calendar/api/Habit;Lcom/google/android/calendar/api/HabitClientBase$1;)V

    move-object v0, v4

    goto :goto_0

    :cond_1
    move v6, v2

    goto :goto_1
.end method
