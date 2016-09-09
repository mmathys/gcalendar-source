.class public Lcom/android/calendar/timely/CustomUserSuggestionListenerHolder;
.super Ljava/lang/Object;
.source "CustomUserSuggestionListenerHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/CustomUserSuggestionListenerHolder$OnCreateCustomSuggestionListener;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/calendar/timely/CustomUserSuggestionListenerHolder;


# instance fields
.field private final mCreateCustomSuggestionChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/CustomUserSuggestionListenerHolder$OnCreateCustomSuggestionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/android/calendar/timely/CustomUserSuggestionListenerHolder;

    invoke-direct {v0}, Lcom/android/calendar/timely/CustomUserSuggestionListenerHolder;-><init>()V

    sput-object v0, Lcom/android/calendar/timely/CustomUserSuggestionListenerHolder;->INSTANCE:Lcom/android/calendar/timely/CustomUserSuggestionListenerHolder;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/CustomUserSuggestionListenerHolder;->mCreateCustomSuggestionChangedListeners:Ljava/util/List;

    .line 36
    return-void
.end method

.method public static getInstance()Lcom/android/calendar/timely/CustomUserSuggestionListenerHolder;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/calendar/timely/CustomUserSuggestionListenerHolder;->INSTANCE:Lcom/android/calendar/timely/CustomUserSuggestionListenerHolder;

    return-object v0
.end method


# virtual methods
.method public registerCreateCustomSuggestionListener(Lcom/android/calendar/timely/CustomUserSuggestionListenerHolder$OnCreateCustomSuggestionListener;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/calendar/timely/CustomUserSuggestionListenerHolder;->mCreateCustomSuggestionChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public setCreateCustomSuggestion(Lcom/android/calendar/timely/TimelineSuggestion;)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/calendar/timely/CustomUserSuggestionListenerHolder;->mCreateCustomSuggestionChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/CustomUserSuggestionListenerHolder$OnCreateCustomSuggestionListener;

    .line 53
    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0, p1}, Lcom/android/calendar/timely/CustomUserSuggestionListenerHolder$OnCreateCustomSuggestionListener;->onCreateCustomUserSuggestionChanged(Lcom/android/calendar/timely/TimelineSuggestion;)V

    goto :goto_0

    .line 57
    :cond_1
    return-void
.end method

.method public unregisterCreateCustomSuggestionListeners()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/calendar/timely/CustomUserSuggestionListenerHolder;->mCreateCustomSuggestionChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 45
    return-void
.end method
