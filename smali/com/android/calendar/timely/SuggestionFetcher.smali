.class public abstract Lcom/android/calendar/timely/SuggestionFetcher;
.super Ljava/lang/Object;
.source "SuggestionFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/SuggestionFetcher$OnSuggestionsListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mSuggestionsListener:Lcom/android/calendar/timely/SuggestionFetcher$OnSuggestionsListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/timely/SuggestionFetcher$OnSuggestionsListener",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/calendar/timely/SuggestionFetcher$OnSuggestionsListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/calendar/timely/SuggestionFetcher$OnSuggestionsListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    iput-object p2, p0, Lcom/android/calendar/timely/SuggestionFetcher;->mSuggestionsListener:Lcom/android/calendar/timely/SuggestionFetcher$OnSuggestionsListener;

    .line 36
    return-void
.end method

.method public abstract startFetchingSuggestions(Ljava/lang/String;)V
.end method

.method public updateSuggestions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/calendar/timely/SuggestionFetcher;->mSuggestionsListener:Lcom/android/calendar/timely/SuggestionFetcher$OnSuggestionsListener;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/android/calendar/timely/SuggestionFetcher;->mSuggestionsListener:Lcom/android/calendar/timely/SuggestionFetcher$OnSuggestionsListener;

    invoke-interface {v0, p1}, Lcom/android/calendar/timely/SuggestionFetcher$OnSuggestionsListener;->onUpdateSuggestions(Ljava/util/List;)V

    .line 42
    :cond_0
    return-void
.end method
