.class public Lcom/android/calendar/timely/data/CalendarLoaderManager$Builder;
.super Ljava/lang/Object;
.source "CalendarLoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/data/CalendarLoaderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static mInstance:Lcom/android/calendar/timely/data/CalendarLoaderManager$Builder;


# instance fields
.field private final loaderCallbacksList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/LoaderManager$LoaderCallbacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/data/CalendarLoaderManager$Builder;->loaderCallbacksList:Ljava/util/ArrayList;

    .line 119
    return-void
.end method

.method public static getInstance()Lcom/android/calendar/timely/data/CalendarLoaderManager$Builder;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/android/calendar/timely/data/CalendarLoaderManager$Builder;->mInstance:Lcom/android/calendar/timely/data/CalendarLoaderManager$Builder;

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Lcom/android/calendar/timely/data/CalendarLoaderManager$Builder;->mInstance:Lcom/android/calendar/timely/data/CalendarLoaderManager$Builder;

    .line 112
    :goto_0
    return-object v0

    .line 111
    :cond_0
    new-instance v0, Lcom/android/calendar/timely/data/CalendarLoaderManager$Builder;

    invoke-direct {v0}, Lcom/android/calendar/timely/data/CalendarLoaderManager$Builder;-><init>()V

    sput-object v0, Lcom/android/calendar/timely/data/CalendarLoaderManager$Builder;->mInstance:Lcom/android/calendar/timely/data/CalendarLoaderManager$Builder;

    .line 112
    sget-object v0, Lcom/android/calendar/timely/data/CalendarLoaderManager$Builder;->mInstance:Lcom/android/calendar/timely/data/CalendarLoaderManager$Builder;

    goto :goto_0
.end method


# virtual methods
.method public addCallbacks(Landroid/app/LoaderManager$LoaderCallbacks;)I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/calendar/timely/data/CalendarLoaderManager$Builder;->loaderCallbacksList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/android/calendar/timely/data/CalendarLoaderManager$Builder;->loaderCallbacksList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public build()Lcom/android/calendar/timely/data/CalendarLoaderManager;
    .locals 3

    .prologue
    .line 137
    new-instance v0, Lcom/android/calendar/timely/data/CalendarLoaderManager;

    iget-object v1, p0, Lcom/android/calendar/timely/data/CalendarLoaderManager$Builder;->loaderCallbacksList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/timely/data/CalendarLoaderManager;-><init>(Ljava/util/ArrayList;Lcom/android/calendar/timely/data/CalendarLoaderManager$1;)V

    return-object v0
.end method
