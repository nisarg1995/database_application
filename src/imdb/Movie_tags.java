/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package imdb;

/**
 *
 * @author Nisarg
 */
public class Movie_tags {
	int movieID;
	int tagID;
	int tagWeight;
	public int getMovieID() {
		return movieID;
	}
	public void setMovieID(int movieID) {
		this.movieID = movieID;
	}
	public int getTagID() {
		return tagID;
	}
	public void setTagID(int tagID) {
		this.tagID = tagID;
	}
	public int getTagWeight() {
		return tagWeight;
	}
	public void setTagWeight(int tagWeight) {
		this.tagWeight = tagWeight;
	}
}